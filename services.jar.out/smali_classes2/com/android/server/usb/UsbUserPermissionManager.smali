.class Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SNET_EVENT_LOG_ID:I = 0x534e4554

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsCopyPermissionsScheduled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionsFile:Landroid/util/AtomicFile;

.field private final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field private final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v4, "usb_permissions.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "usb-permissions"

    invoke-direct {v2, v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;II)Z
    .locals 6

    const/16 v0, 0x1c

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p3, :cond_0

    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    nop

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    const-string v2, "granted"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb-accessory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return-void

    :cond_5
    :goto_2
    sget-object v2, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading usb permission granted state"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permission uid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private readPermissionsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_3
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 12

    move-object v9, p0

    move-object/from16 v10, p4

    move/from16 v11, p6

    const-string v1, " not found"

    const-string v2, "package "

    :try_start_0
    iget-object v0, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v11, :cond_0

    nop

    iget-object v7, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not match caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "180104273"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, ""

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private scheduleWritePermissionsLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    new-instance v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission to access device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v0, "user_id"

    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v2, v0, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    if-ge v6, v0, :cond_1

    iget-object v15, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v7, "device_permissions"

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v13, "device_name"

    invoke-virtual {v2, v13, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_0

    const-string v14, "uids"

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    move-object/from16 v16, v11

    const-wide v10, 0x20500000002L

    invoke-virtual {v2, v14, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v11

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v0, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_3

    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    const-string v8, "accessory_permissions"

    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "accessory_description"

    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v10, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_3
    if-ge v11, v15, :cond_2

    const-string v12, "uids"

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    invoke-virtual {v2, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v16

    const-wide v13, 0x20b00000002L

    goto :goto_3

    :cond_2
    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v0, v6

    const/4 v6, 0x0

    :goto_4
    const-wide v9, 0x10b00000001L

    if-ge v6, v0, :cond_5

    :try_start_1
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v14, "device"

    invoke-virtual {v11, v2, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v10, :cond_4

    const-string v15, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v15, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v7, v16

    const-string v15, "uid"

    move/from16 v16, v0

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000001L

    invoke-virtual {v2, v15, v10, v11, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v0, "is_granted"

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v20, v3

    const-wide v3, 0x10800000002L

    :try_start_2
    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-wide/from16 v3, v20

    goto :goto_5

    :cond_4
    move/from16 v16, v0

    move-wide/from16 v20, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-wide/from16 v3, v20

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    move/from16 v16, v0

    move-wide/from16 v20, v3

    :try_start_3
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_7

    :try_start_4
    iget-object v4, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    const-string v6, "accessory_persistent_permissions"

    const-wide v7, 0x20b00000005L

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "accessory"

    invoke-virtual {v4, v2, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_6

    const-string v13, "uid_permission"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v18, v16

    const-string v13, "uid"

    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    const-wide v14, 0x10500000001L

    invoke-virtual {v2, v13, v14, v15, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v9, "is_granted"

    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    const-wide v14, 0x10800000002L

    invoke-virtual {v2, v9, v14, v15, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    move-wide/from16 v9, v18

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v12, v12, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_7

    :cond_6
    const-wide v14, 0x10800000002L

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v3, v3, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_6

    :catchall_1
    move-exception v0

    move-wide/from16 v3, v20

    goto :goto_8

    :cond_7
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v3, v20

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_2
    move-exception v0

    move-wide/from16 v3, v20

    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_8
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v1, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    monitor-exit v0

    return v4

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_2

    const/4 v4, 0x0

    monitor-exit v0

    return v4

    :cond_2
    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    monitor-exit v0

    return v4

    :cond_3
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .locals 6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v3, 0x3e8

    if-eq p4, v3, :cond_6

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_5

    monitor-exit v0

    return v1

    :cond_5
    invoke-virtual {v4, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_6
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$scheduleWritePermissionsLocked$0$UsbUserPermissionManager()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, v0

    new-array v0, v3, [Landroid/hardware/usb/DeviceFilter;

    move-object v4, v0

    new-array v0, v3, [[I

    move-object v5, v0

    new-array v0, v3, [[Z

    move-object v6, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    new-instance v7, Landroid/hardware/usb/DeviceFilter;

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v7, v8}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v7, v4, v0

    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    new-array v9, v8, [I

    aput-object v9, v5, v0

    new-array v9, v8, [Z

    aput-object v9, v6, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v5, v0

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    aput v11, v10, v9

    aget-object v10, v6, v0

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    aput-boolean v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v7, v0

    new-array v0, v7, [Landroid/hardware/usb/AccessoryFilter;

    move-object v8, v0

    new-array v0, v7, [[I

    move-object v9, v0

    new-array v0, v7, [[Z

    move-object v10, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_3

    new-instance v11, Landroid/hardware/usb/AccessoryFilter;

    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v11, v12}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v11, v8, v0

    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    new-array v13, v12, [I

    aput-object v13, v9, v0

    new-array v13, v12, [Z

    aput-object v13, v10, v0

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_2

    aget-object v14, v9, v0

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v13

    aget-object v14, v10, v0

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    aput-boolean v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v11

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v0, v13, v12}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v12, "permissions"

    invoke-interface {v0, v13, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v3, :cond_5

    aget-object v14, v5, v12

    array-length v14, v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_4

    const-string v13, "permission"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v3

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v0, v3, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "uid"

    aget-object v13, v5, v12

    aget v13, v13, v15

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v0, v5, v3, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "granted"

    aget-object v5, v6, v12

    aget-boolean v5, v5, v15

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-interface {v0, v13, v3, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget-object v3, v4, v12

    invoke-virtual {v3, v0}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v3, "permission"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_8

    :cond_4
    move/from16 v16, v3

    move-object/from16 v17, v5

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v5

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v7, :cond_7

    aget-object v5, v9, v3

    array-length v5, v5

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_6

    const-string v13, "permission"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "uid"

    aget-object v14, v9, v3

    aget v14, v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v0, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "granted"

    aget-object v14, v6, v3

    aget-boolean v14, v14, v12

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v0, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget-object v13, v8, v3

    invoke-virtual {v13, v0}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v13, "permission"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    const-string v3, "permissions"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    :goto_8
    :try_start_4
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write permissions"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_8

    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_8
    :goto_9
    monitor-exit v11

    return-void

    :catchall_2
    move-exception v0

    :goto_a
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9

    invoke-virtual {p0, p1, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v5

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v3, "device"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "accessory"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    nop

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "unable to start UsbPermissionActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .locals 5

    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .locals 5

    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
