.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$RescuePartyObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEVICE_CONFIG_RESET_MODE:I = 0x4

.field static final LEVEL_FACTORY_RESET:I = 0x5

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field static final LEVEL_WARM_REBOOT:I = 0x4

.field private static final NAME:Ljava/lang/String; = "rescue-party-observer"

.field static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final NAMESPACE_TO_PACKAGE_MAPPING_FLAG:Ljava/lang/String; = "namespace_to_package_mapping"

.field private static final PERSISTENT_MASK:I = 0x9

.field static final PROP_ATTEMPTING_FACTORY_RESET:Ljava/lang/String; = "sys.attempting_factory_reset"

.field static final PROP_ATTEMPTING_REBOOT:Ljava/lang/String; = "sys.attempting_reboot"

.field private static final PROP_DEVICE_CONFIG_DISABLE_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party"

.field private static final PROP_DISABLE_FACTORY_RESET_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party_factory_reset"

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field static final PROP_MAX_RESCUE_LEVEL_ATTEMPTED:Ljava/lang/String; = "sys.max_rescue_level_attempted"

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(IZ)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->getRescueLevel(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/RescueParty;->mapRescueLevelToUserImpact(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting rescue level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished rescue level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p2, p1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x7a

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "true"

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v1, "sys.attempting_factory_reset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/RescueParty$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :pswitch_1
    const-string/jumbo v1, "sys.attempting_reboot"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :pswitch_2
    const/4 v1, 0x4

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x3

    :try_start_2
    invoke-static {p0, v2, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v0, v2

    :goto_1
    :try_start_3
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :pswitch_4
    const/4 v2, 0x2

    :try_start_4
    invoke-static {p0, v2, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v0, v2

    :goto_2
    :try_start_5
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v0, v1

    nop

    :goto_3
    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAllUserIds()[I
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method static getElapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMaxRescueLevel(Z)I
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.device_config.configuration.disable_rescue_party_factory_reset"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method private static getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    const-string v1, "configuration"

    const-string/jumbo v2, "namespace_to_package_mapping"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mapping entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v2, "RescueParty"

    const-string v3, "Failed to read preset package to namespaces mapping."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_2
    return-object v0
.end method

.method private static getRescueLevel(IZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive mitigation count, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string/jumbo v2, "namespace"

    packed-switch v1, :pswitch_data_0

    const-string v1, "RescueParty"

    const-string v2, "Unrecognized DeviceConfig callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    const-string v1, "calling_package"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$100(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2ccdde53 -> :sswitch_1
        0x45856cc0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleNativeRescuePartyResets()V
    .locals 4

    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-string v3, "configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .locals 1

    invoke-static {}, Lcom/android/server/RescueParty;->isFactoryResetPropertySet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDisabled()Z
    .locals 4

    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v0, :cond_1

    const-string v0, "Disabled because of DeviceConfig flag"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v1
.end method

.method static isFactoryResetPropertySet()Z
    .locals 2

    const-string/jumbo v0, "sys.attempting_factory_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isRebootPropertySet()Z
    .locals 2

    const-string/jumbo v0, "sys.attempting_reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isUsbActive()Z
    .locals 5

    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "RescueParty"

    if-eqz v0, :cond_0

    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic lambda$executeRescueLevelInternal$1(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const-string v1, "RescueParty"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1, p2, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static levelToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FACTORY_RESET"

    return-object v0

    :pswitch_1
    const-string v0, "WARM_REBOOT"

    return-object v0

    :pswitch_2
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    :pswitch_3
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    :pswitch_4
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    :pswitch_5
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method private static mapRescueLevelToUserImpact(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static performScopedReset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$000(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing scoped reset for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "configuration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static registerHealthObserver(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method

.method private static resetAllAffectedNamespaces(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$400(Lcom/android/server/RescueParty$RescuePartyObserver;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing reset for all affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "configuration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "sys.max_rescue_level_attempted"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3, p1, v1}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_0
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_1

    aget v6, v4, v1

    :try_start_1
    invoke-static {v2, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    throw v0
.end method

.method private static resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetAllAffectedNamespaces(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to reset config settings"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static resetDeviceConfigForPackages(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstanceIfCreated()Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    nop

    invoke-static {v2, v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$000(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/server/RescueParty;->getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v6, v5}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    :try_end_0
    .catch Landroid/provider/DeviceConfig$BadConfigException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "namespace "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is already banned, skip reset."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_2
    goto :goto_1

    :cond_4
    return-void
.end method

.method private static startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$200(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting to observe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", updated namespace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RescueParty"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v3

    sget-wide v4, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    return-void
.end method
