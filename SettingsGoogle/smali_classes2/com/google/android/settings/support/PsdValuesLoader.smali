.class public Lcom/google/android/settings/support/PsdValuesLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "PsdValuesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/google/android/settings/support/PsdBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z

.field static final NOE_ALARM_MAX_VOLUME:Ljava/lang/String; = "noe_alarm_max_volume"

.field static final NOE_BATTERY_LEVEL:Ljava/lang/String; = "noe_battery_level"

.field static final NOE_BATTERY_SCALE:Ljava/lang/String; = "noe_battery_scale"

.field static final NOE_BATTERY_STATUS:Ljava/lang/String; = "noe_battery_status"

.field static final NOE_BRIGHTNESS_LEVEL:Ljava/lang/String; = "noe_brightness_level"

.field static final NOE_CAMERA_VERSION_CODE:Ljava/lang/String; = "noe_camera_version_code"

.field static final NOE_CAMERA_VERSION_NAME:Ljava/lang/String; = "noe_camera_version_name"

.field static final NOE_CELLULAR_DBM:Ljava/lang/String; = "noe_cellular_dbm"

.field static final NOE_CELLULAR_RADIO_TYPE:Ljava/lang/String; = "noe_cellular_radio_type"

.field static final NOE_CELLULAR_STRENGTH:Ljava/lang/String; = "noe_cellular_strength"

.field static final NOE_CHARGING_STATUS:Ljava/lang/String; = "noe_charging_status"

.field static final NOE_DEVICE_ACTIVATION_TIME:Ljava/lang/String; = "noe_device_activation_time"

.field static final NOE_IMEI:Ljava/lang/String; = "noe_imei"

.field static final NOE_LOCATION_MODE:Ljava/lang/String; = "noe_location_mode"

.field static final NOE_MUSIC_MAX_VOLUME:Ljava/lang/String; = "noe_music_max_volume"

.field static final NOE_NOTIFICATION_MAX_VOLUME:Ljava/lang/String; = "noe_notification_max_volume"

.field static final NOE_PREVIOUS_OS:Ljava/lang/String; = "noe_previous_os"

.field static final NOE_RINGER_MAX_VOLUME:Ljava/lang/String; = "noe_ringer_max_volume"

.field static final NOE_SYSTEM_MAX_VOLUME:Ljava/lang/String; = "noe_system_max_volume"

.field static final NOE_USB_DATA_ROLE:Ljava/lang/String; = "noe_usb_data_role"

.field static final NOE_USB_FUNCTIONS:Ljava/lang/String; = "noe_usb_functions"

.field static final NOE_USB_POWER_ROLE:Ljava/lang/String; = "noe_usb_power_role"

.field static final NOE_VOICE_CALL_MAX_VOLUME:Ljava/lang/String; = "noe_voice_call_max_volume"

.field static final NOE_WEAR_VERSION_CODE:Ljava/lang/String; = "noe_wear_version_code"

.field static final NOE_WEAR_VERSION_NAME:Ljava/lang/String; = "noe_wear_version_name"

.field static final NOE_WIFI_AVAILABLE:Ljava/lang/String; = "noe_wifi_available"

.field static final NOE_WIFI_CONNECTED:Ljava/lang/String; = "noe_wifi_connected"

.field static final NOE_WIFI_SECURITY_KEY_VALID:Ljava/lang/String; = "noe_wifi_security_key_valid"

.field static final NOE_WIFI_SPEED:Ljava/lang/String; = "noe_wifi_speed"

.field static final NOE_WIFI_STRENGTH:Ljava/lang/String; = "noe_wifi_strength"

.field static sUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/settings/support/PsdValuesLoader;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v0, "PsdValuesLoader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    return-void
.end method

.method protected static dumpBatteryStats(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "batterystats"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settingsgoogle:psd_battery_stats"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/settings/experiments/GServicesProxy;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "PsdValuesLoader"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-boolean p0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Not collecting battery_stats, skip."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v0, v3, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const-string v5, "-c"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Failed to dump battery stats."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v3

    :goto_0
    :try_start_2
    const-string v1, "IOException while dumping batterystats"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    throw v0
.end method

.method private static getCellularStrength(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    filled-new-array {p0, p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v9, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_1

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    goto :goto_1

    :cond_1
    instance-of v9, v5, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_2

    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v7

    goto :goto_1

    :cond_2
    instance-of v9, v5, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_3

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    goto :goto_1

    :cond_3
    instance-of v9, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    :cond_4
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v4, 0x1

    if-lez p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method

.method static getDeviceAgeInDays(Landroid/content/ContentResolver;)J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "device_registration_time"

    const-wide/16 v3, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUsbMode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/google/android/settings/support/PsdValuesLoader;->sUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p0

    return-object v3
.end method

.method private static getWifiExtras(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    const-string p0, ""

    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWifiStatus(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_3

    aget-object v8, v0, v3

    invoke-virtual {p0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v8, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v7, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    move v5, v4

    goto :goto_1

    :cond_1
    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    return-object p0

    :cond_4
    const-string p0, ""

    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasModifiedSystemProperties()Z
    .locals 2

    const-string v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.secure"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static hasSuperUserBinary()Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/sbin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/xbin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local/xbin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local/bin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/sd/xbin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/failsafe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/local"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    const-string v3, "su"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isDevOrTestKeys()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dev-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDeviceRooted()Z
    .locals 1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->isDevOrTestKeys()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->hasModifiedSystemProperties()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->hasSuperUserBinary()Z

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

.method public static makePsdBundle(Landroid/content/Context;I)Lcom/google/android/settings/support/PsdBundle;
    .locals 61

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v1, :cond_3

    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    const-string v12, "wifi"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    const-string v13, "audio"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "screen_brightness_mode"

    invoke-static {v9, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "screen_off_timeout"

    invoke-static {v9, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    if-eqz v5, :cond_4

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v24, v6

    invoke-static/range {v23 .. v23}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v6

    move-wide/from16 v25, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v6, v3, v2}, Landroid/telephony/ims/ImsMmTelManager;->isAvailable(II)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v4

    move-object/from16 v6, v24

    goto :goto_5

    :cond_5
    move-wide/from16 v25, v2

    move-object/from16 v24, v6

    :catch_0
    move-object/from16 v23, v4

    move-object/from16 v6, v24

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    move-wide/from16 v25, v2

    move-object/from16 v23, v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_5
    const-wide/16 v3, 0x0

    move-object/from16 v24, v15

    const-string v15, "android_id"

    invoke-static {v9, v15, v3, v4}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_7

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v15

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v15

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v15

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v15

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v15

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v29

    move-object/from16 v29, v15

    goto :goto_6

    :cond_7
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    :goto_6
    if-eqz v7, :cond_b

    const-string v15, "screen_brightness"

    invoke-static {v9, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v36

    invoke-static {v11}, Lcom/google/android/settings/support/PsdValuesLoader;->getCellularStrength(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x0

    aget-object v37, v11, v18

    move-object/from16 v38, v15

    const/4 v15, 0x1

    aget-object v19, v11, v15

    const/16 v17, 0x2

    aget-object v11, v11, v17

    move-object/from16 v39, v37

    move-object/from16 v37, v36

    move-object/from16 v36, v19

    goto :goto_7

    :cond_8
    move-object/from16 v38, v15

    const/4 v15, 0x1

    const/4 v11, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->dumpBatteryStats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_9

    sget-boolean v19, Lcom/google/android/settings/support/PsdValuesLoader;->DEBUG:Z

    if-eqz v19, :cond_9

    move-object/from16 v41, v11

    new-array v11, v15, [Ljava/lang/Object;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v42, v5

    const/4 v5, 0x0

    aput-object v15, v11, v5

    const-string v15, "Dump battery stats, length: %d"

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "PsdValuesLoader"

    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    move-object/from16 v42, v5

    move-object/from16 v41, v11

    const/4 v5, 0x0

    :goto_8
    if-eqz v13, :cond_a

    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x5

    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v5

    const/4 v5, 0x4

    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v5

    const/4 v5, 0x3

    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v43, v5

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v43, 0x0

    :goto_9
    const-string v5, "plugged"

    move-object/from16 v44, v11

    const/4 v11, -0x1

    invoke-virtual {v14, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->getUsbMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v12}, Lcom/google/android/settings/support/PsdValuesLoader;->getWifiExtras(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v45, v12

    goto :goto_a

    :cond_b
    move-object/from16 v42, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    :goto_a
    const-string v12, ""

    if-eqz v8, :cond_d

    invoke-static {v9}, Lcom/google/android/settings/support/PsdValuesLoader;->getDeviceAgeInDays(Landroid/content/ContentResolver;)J

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v48, 0x1e

    cmp-long v46, v46, v48

    if-gtz v46, :cond_c

    const-string v46, "1"

    goto :goto_b

    :cond_c
    const-string v46, "0"

    :goto_b
    move-object/from16 v60, v46

    move-object/from16 v46, v11

    move-object/from16 v11, v60

    goto :goto_c

    :cond_d
    move-object/from16 v46, v11

    move-object v8, v12

    move-object v11, v8

    :goto_c
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->getWifiStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v47

    move-object/from16 v48, v5

    const-string v5, "scale"

    move-object/from16 v49, v13

    const/4 v13, -0x1

    invoke-virtual {v14, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v15

    const-string v15, "level"

    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "location_mode"

    move-object/from16 v50, v11

    const/4 v11, 0x0

    invoke-static {v9, v15, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->readBatteryInfo(Landroid/content/Intent;I)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readStorage(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readRam(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v51

    move/from16 v52, v7

    const-string v7, "com.google.android.GoogleCamera"

    invoke-static {v10, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v53, v8

    const-string v8, "com.google.android.wearable.app"

    invoke-static {v10, v8}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v10, v1}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v54, v8

    const-string v8, "com.google.android.gms"

    invoke-static {v10, v8}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v55, v7

    const-string v7, "com.android.vending"

    invoke-static {v10, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v10, "update_url"

    invoke-static {v9, v10, v12}, Lcom/google/android/settings/experiments/GServicesProxy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readBluetoothInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v56

    move-object/from16 v58, v7

    move-object/from16 v57, v8

    const-wide/32 v7, 0x61a80

    move-object/from16 v59, v10

    const-string v10, "settingsgoogle:psd_values_size_limit_bytes"

    invoke-static {v9, v10, v7, v8}, Lcom/google/android/settings/experiments/GServicesProxy;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    new-instance v9, Lcom/google/android/settings/support/PsdBundle$Builder;

    invoke-direct {v9, v0, v7, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;-><init>(Landroid/content/Context;J)V

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v8, "noe_display_name"

    invoke-virtual {v9, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "noe_type"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v9, "noe_product"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_sdk_int"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v9, "noe_incremental"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v9, "noe_codename"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v9, "noe_board"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v9, "noe_brand"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v9, "noe_fingerprint"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    const-string v9, "noe_base_os"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_preview_sdk_int"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const-string v9, "noe_security_patch"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/settings/support/PsdValuesLoader;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "noe_dump_datetime"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v7

    if-nez v4, :cond_e

    move-object v4, v12

    :cond_e
    const-string v8, "noe_timezone"

    invoke-virtual {v7, v8, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string v8, "noe_bootloader"

    invoke-virtual {v4, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "noe_radio"

    invoke-virtual {v4, v8, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    if-nez v6, :cond_f

    move-object v6, v12

    :cond_f
    const-string v7, "noe_network_operator"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    if-nez v21, :cond_10

    move-object v6, v12

    goto :goto_d

    :cond_10
    move-object/from16 v6, v21

    :goto_d
    const-string v7, "noe_network_type"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    if-nez v22, :cond_11

    move-object v6, v12

    goto :goto_e

    :cond_11
    move-object/from16 v6, v22

    :goto_e
    const-string v7, "noe_phone_type"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v4

    if-nez v2, :cond_12

    move-object v2, v12

    :cond_12
    const-string v6, "noe_is_volte_available"

    invoke-virtual {v4, v6, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v6, "noe_build_id"

    invoke-virtual {v2, v6, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v4, "noe_decimal_gsf_id"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_gps_enabled"

    move-object/from16 v4, v42

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v24, :cond_13

    move-object v3, v12

    goto :goto_f

    :cond_13
    move-object/from16 v3, v24

    :goto_f
    const-string v4, "noe_screen_brightness_mode"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v34, :cond_14

    move-object v3, v12

    goto :goto_10

    :cond_14
    move-object/from16 v3, v34

    :goto_10
    const-string v4, "noe_system_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v30, :cond_15

    move-object v3, v12

    goto :goto_11

    :cond_15
    move-object/from16 v3, v30

    :goto_11
    const-string v4, "noe_alarm_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v33, :cond_16

    move-object v3, v12

    goto :goto_12

    :cond_16
    move-object/from16 v3, v33

    :goto_12
    const-string v4, "noe_voice_call_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v29, :cond_17

    move-object v3, v12

    goto :goto_13

    :cond_17
    move-object/from16 v3, v29

    :goto_13
    const-string v4, "noe_notification_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v31, :cond_18

    move-object v3, v12

    goto :goto_14

    :cond_18
    move-object/from16 v3, v31

    :goto_14
    const-string v4, "noe_music_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v32, :cond_19

    move-object v3, v12

    goto :goto_15

    :cond_19
    move-object/from16 v3, v32

    :goto_15
    const-string v4, "noe_ringer_max_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v23, :cond_1a

    move-object v4, v12

    goto :goto_16

    :cond_1a
    move-object/from16 v4, v23

    :goto_16
    const-string v3, "noe_display_timeout"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v20, :cond_1b

    move-object v3, v12

    goto :goto_17

    :cond_1b
    move-object/from16 v3, v20

    :goto_17
    const-string v4, "noe_sim_state"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_good_reboots_last_day"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_bad_reboots_last_day"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_good_reboots_last_week"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_bad_reboots_last_week"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_location_mode"

    invoke-virtual {v2, v3, v11}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readWifiState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "noe_wifi_state"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v47, v3

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    aget-object v4, v47, v3

    goto :goto_18

    :cond_1c
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/support/PsdValuesLoader;->readWifiSecurityKeyValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_18
    const-string v3, "noe_wifi_security_key_valid"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v14, v3

    const-string v3, "noe_battery_health"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_battery_level"

    invoke-virtual {v2, v3, v13}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const-string v3, "noe_battery_scale"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v4, v14, v3

    const-string v3, "noe_battery_voltage"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v14, v3

    const-string v4, "noe_battery_present"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v15, v3

    const-string v5, "noe_storage_available"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v15, v4

    const-string v6, "noe_storage_total"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v51, v3

    const-string v6, "noe_ram_available"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v51, v4

    const-string v6, "noe_ram_total"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v5, v1, v3

    const-string v6, "noe_google_app_version_code"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v1, v1, v4

    const-string v5, "noe_google_app_version_name"

    invoke-virtual {v2, v5, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v57, v3

    const-string v5, "noe_google_play_services_version_code"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v57, v4

    const-string v5, "noe_google_play_services_version_name"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v58, v3

    const-string v5, "noe_google_play_store_version_code"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v58, v4

    const-string v5, "noe_google_play_store_version_name"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    const-string v2, "noe_update_url"

    move-object/from16 v5, v59

    invoke-virtual {v1, v2, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v56, v3

    const-string v5, "noe_num_bluetooth_connections"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v56, v4

    const-string v5, "noe_bluetooth_enabled"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/settings/support/PsdValuesLoader;->isDeviceRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "noe_is_rooted"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v55, v3

    const-string v5, "noe_camera_version_code"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v55, v4

    const-string v5, "noe_camera_version_name"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v54, v3

    const-string v3, "noe_wear_version_code"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    aget-object v2, v54, v4

    const-string v3, "noe_wear_version_name"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v1

    move/from16 v2, p1

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addPairedBluetoothDevices()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addConnectedBluetoothDevicesSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTopBatteryApps()Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1d
    if-ne v4, v2, :cond_1e

    const-string v3, "noe_device_activation_time"

    move-object/from16 v8, v53

    invoke-virtual {v1, v3, v8}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1e
    if-nez v2, :cond_1f

    const-string v2, "noe_device_under_thirty"

    move-object/from16 v3, v50

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_1f
    if-eqz v52, :cond_2e

    if-nez v35, :cond_20

    move-object v15, v12

    goto :goto_19

    :cond_20
    move-object/from16 v15, v35

    :goto_19
    const-string v2, "noe_voice_call_volume"

    invoke-virtual {v1, v2, v15}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v16, :cond_21

    move-object v3, v12

    goto :goto_1a

    :cond_21
    move-object/from16 v3, v16

    :goto_1a
    const-string v4, "noe_notification_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v44, :cond_22

    move-object v3, v12

    goto :goto_1b

    :cond_22
    move-object/from16 v3, v44

    :goto_1b
    const-string v4, "noe_system_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v14, v3

    const-string v3, "noe_battery_status"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v27, :cond_23

    move-object v3, v12

    goto :goto_1c

    :cond_23
    move-object/from16 v3, v27

    :goto_1c
    const-string v4, "noe_alarm_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v28, :cond_24

    move-object v3, v12

    goto :goto_1d

    :cond_24
    move-object/from16 v3, v28

    :goto_1d
    const-string v4, "noe_music_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v43, :cond_25

    move-object v3, v12

    goto :goto_1e

    :cond_25
    move-object/from16 v3, v43

    :goto_1e
    const-string v4, "noe_ringer_volume"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v38, :cond_26

    move-object v3, v12

    goto :goto_1f

    :cond_26
    move-object/from16 v3, v38

    :goto_1f
    const-string v4, "noe_brightness_level"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v49, :cond_27

    move-object v13, v12

    goto :goto_20

    :cond_27
    move-object/from16 v13, v49

    :goto_20
    const-string v3, "noe_headset_attached"

    invoke-virtual {v2, v3, v13}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v40, :cond_28

    move-object v3, v12

    goto :goto_21

    :cond_28
    move-object/from16 v3, v40

    :goto_21
    const-string v4, "noe_battery_stats"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v48, :cond_29

    move-object v5, v12

    goto :goto_22

    :cond_29
    move-object/from16 v5, v48

    :goto_22
    const-string v3, "noe_charging_status"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v46, v3

    const-string v3, "noe_usb_functions"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v46, v3

    const-string v3, "noe_usb_power_role"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v46, v3

    const-string v4, "noe_usb_data_role"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v37, :cond_2a

    move-object v3, v12

    goto :goto_23

    :cond_2a
    move-object/from16 v3, v37

    :goto_23
    const-string v4, "noe_imei"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v39, :cond_2b

    move-object v3, v12

    goto :goto_24

    :cond_2b
    move-object/from16 v3, v39

    :goto_24
    const-string v4, "noe_cellular_radio_type"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v36, :cond_2c

    move-object v3, v12

    goto :goto_25

    :cond_2c
    move-object/from16 v3, v36

    :goto_25
    const-string v4, "noe_cellular_strength"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    if-nez v41, :cond_2d

    goto :goto_26

    :cond_2d
    move-object/from16 v12, v41

    :goto_26
    const-string v3, "noe_cellular_dbm"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v47, v3

    const-string v5, "noe_wifi_available"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v47, v4

    const-string v6, "noe_wifi_connected"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v3, v45, v3

    const-string v5, "noe_wifi_speed"

    invoke-virtual {v2, v5, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    aget-object v3, v45, v4

    const-string v4, "noe_wifi_strength"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addBatteryAnomalyApps()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyTroubleshooterDiagnosticSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyTroubleshooterStatisticsSignals()Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1110000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "genie-eng:app_pkg_name"

    const-string v3, "com.google.android.settings.gphone"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v25

    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x3fb

    const/4 v7, 0x0

    long-to-int v9, v2

    const-string v8, "latency"

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->build()Lcom/google/android/settings/support/PsdBundle;

    move-result-object v0

    return-object v0
.end method

.method private static readBatteryInfo(Landroid/content/Intent;I)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "health"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const-string v4, "status"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, p1

    :cond_1
    const-string p1, "voltage"

    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x3

    const-string v1, "present"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v0
.end method

.method private static readBluetoothInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PsdValuesLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/google/android/settings/support/PsdValuesLoader;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method protected static readRam(Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    if-nez p1, :cond_0

    invoke-static {v4, v5}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v4

    invoke-static {v6, v7}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v6

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_1
    const-string p0, ""

    aput-object p0, v0, v2

    aput-object p0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected static readStorage(Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 8

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    add-long/2addr v1, v6

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {v1, v2}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide v1

    invoke-static {v3, v4}, Lcom/google/android/settings/support/PsdValuesLoader;->roundToMB(J)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    move-wide p0, v3

    goto :goto_1

    :cond_3
    move-wide p0, v1

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3
.end method

.method private static readVersionInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p0, v1, v2

    goto :goto_0

    :cond_0
    aput-object v0, v1, v3

    aput-object v0, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PsdValuesLoader"

    const-string p1, "Failed to find package"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v0, v1, v3

    aput-object v0, v1, v2

    :goto_0
    return-object v1
.end method

.method private static readWifiSecurityKeyValid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static readWifiState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static roundToDays(J)J
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static roundToMB(J)J
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method
