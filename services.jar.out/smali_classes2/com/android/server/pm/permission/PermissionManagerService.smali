.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;,
        Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;,
        Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;,
        Lcom/android/server/pm/permission/PermissionManagerService$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final CAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.car"

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3

.field private static final sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

.field private mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-jwWzLOAecD4maFgzcXBwZFTpcY(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$90k0yAxORkIVQrpOlgT8lZ-lcvM(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AdmbnHOAaZZsea9HyB2538mR5A4(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "platform_compat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    new-instance v2, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.car"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-direct {v2, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v1

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v7, Lcom/android/server/pm/permission/Permission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v4}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    :cond_1
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissionState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->writeLegacyPermissionState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;I)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->stopShellPermissionIdentityDelegationInternal()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getDelegatedShellPermissionsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->writeLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getLegacyPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/pm/permission/PermissionManagerService;I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/pm/permission/PermissionManagerService;I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getGidsForUid(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object p1
.end method

.method static synthetic access$4000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v5, :cond_2

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ignored: original from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v4

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x16

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/parsing/component/ParsedPermission;->setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;

    :cond_0
    const/16 v5, 0x80

    invoke-static {v3, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    :goto_1
    nop

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6, v5, v4}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v6, v5, p1, v4, v7}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isInstalled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v9, v10

    invoke-virtual {v3, v9}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    :cond_4
    monitor-exit v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_5
    return-object v1
.end method

.method private addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    return-void
.end method

.method private addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private backupRuntimePermissions(I)[B
    .locals 5

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda17;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method private canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return v2
.end method

.method private checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCrossUserPermission(IIIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move v1, v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x534e4554

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "186404356"

    aput-object v8, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x2

    aput-object p1, v7, v5

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v2

    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v2, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    return v5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I
    .locals 2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    :cond_1
    return-object p4
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_2
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return v0
.end method

.method private checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 9

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return v1

    :cond_4
    invoke-direct {p0, v6, p3, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit v5

    return v4

    :cond_5
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    monitor-exit v5

    return v4

    :cond_6
    monitor-exit v5

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;)Z
    .locals 10

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    return v4

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    nop

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v5, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v1

    goto :goto_0

    :cond_7
    nop

    :goto_0
    if-nez v4, :cond_9

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Privileged permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") not in privapp-permissions allowlist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v7, :cond_8

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    :cond_8
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_9
    :goto_1
    sget-boolean v3, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr v1, v3

    return v1
.end method

.method private checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .locals 4

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkUidPermission(ILjava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkUidPermissionImpl(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v1

    return v0

    :cond_2
    monitor-exit v1

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;"
        }
    .end annotation

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    nop

    const-string v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    if-nez v2, :cond_1

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    move-object v2, v3

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;-><init>(Landroid/content/Context;)V

    const-string v3, "permission_checker"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 3

    if-ltz p2, :cond_2

    if-eqz p4, :cond_0

    const-string v0, "no_debugging_features"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceShellRestriction(Ljava/lang/String;II)V

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkCrossUserPermission(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;II)V
    .locals 3

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to check shell permission for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAllUserIds()[I
    .locals 1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    or-int/lit16 v2, v2, 0x1000

    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    or-int/lit16 v2, v2, 0x2000

    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    or-int/lit16 v2, v2, 0x800

    :cond_3
    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    nop

    invoke-virtual {v1, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v7

    and-int v8, v7, v2

    if-eqz v8, :cond_5

    if-nez v3, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDelegatedShellPermissionsInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGidsForUid(I)[I
    .locals 7

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for app ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and user ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    monitor-exit v2

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object v4

    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/PackageSetting;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILcom/android/server/pm/PackageSetting;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v0, v6

    invoke-direct {v1, v2, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    invoke-direct {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v0, v13

    invoke-virtual {v3, v0, v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_1

    :cond_1
    move-object/from16 v16, v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v0

    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLegacyPermissions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-object v1, v0

    if-eqz v1, :cond_1

    monitor-exit v3

    return-object v1

    :cond_1
    move-object v1, v2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    return-object v0
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_3

    monitor-exit v2

    return v1

    :cond_3
    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionGidsInternal(Ljava/lang/String;I)[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .locals 3

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-eqz v0, :cond_2

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/PackageSetting;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private getSplitPermissionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getUidStateLocked(Lcom/android/server/pm/PackageSetting;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "primary_physical"

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    const/16 v13, 0x14

    const/16 v14, 0x48

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    move/from16 v17, v0

    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz v18, :cond_2

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    if-nez v17, :cond_3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    :cond_4
    move v3, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    goto/16 :goto_4

    :cond_5
    move/from16 v3, v16

    :goto_2
    move/from16 v19, v3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v19, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v8, v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v20

    if-eqz v17, :cond_7

    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v5, v9

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    move/from16 v21, v9

    goto :goto_3

    :cond_6
    move/from16 v21, v9

    goto :goto_3

    :cond_7
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/16 v21, 0x0

    iget-object v7, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v7

    move/from16 v7, p3

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    goto :goto_3

    :cond_8
    move-object/from16 v23, v8

    move/from16 v21, v9

    goto :goto_3

    :cond_9
    move-object/from16 v23, v8

    move/from16 v21, v9

    :goto_3
    move/from16 v9, v21

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v21, v9

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_a
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v1, :cond_1d

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->mayManageRolePermission(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    if-eqz v5, :cond_3

    iget-object v13, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static {v13, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    move v13, v0

    iget-object v14, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v15

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v16, :cond_6

    if-eqz v6, :cond_5

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    :try_start_2
    new-instance v4, Ljava/lang/SecurityException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v17, v5

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v18, v6

    :try_start_4
    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is managed by role"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v0

    move/from16 v18, v6

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_7

    :cond_6
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " requested by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not a changeable permission type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_2
    invoke-direct {v7, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_8
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has not requested permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    :goto_3
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_b

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_b

    monitor-exit v14

    return-void

    :cond_b
    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_c

    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    const-string v15, "Cannot grant system fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_c
    move/from16 v19, v15

    if-nez p3, :cond_d

    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_d

    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant policy fixed permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v10

    if-eqz v10, :cond_e

    and-int/lit16 v10, v5, 0x3800

    if-nez v10, :cond_e

    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez v13, :cond_f

    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant soft restricted permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_4

    :cond_11
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot grant non-ephemeral permission"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    :goto_4
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v10

    if-ge v10, v6, :cond_13

    const-string v6, "PackageManager"

    const-string v10, "Cannot grant runtime permission to a legacy app"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_13
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    monitor-exit v14

    return-void

    :cond_14
    :goto_5
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    monitor-exit v14

    return-void

    :cond_15
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_16

    const/16 v0, 0x4db

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-eqz v12, :cond_18

    if-eqz v3, :cond_17

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_6

    :cond_17
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionGranted()V

    :goto_6
    if-eqz v19, :cond_18

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v12, v4, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onGidsChanged(II)V

    :cond_18
    if-eqz v3, :cond_19

    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_19
    return-void

    :cond_1a
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_2
    move-exception v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_7
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_1b
    :try_start_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_8
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")V"
        }
    .end annotation

    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4, v2, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    return-void
.end method

.method private isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    :goto_0
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    :goto_0
    invoke-static {v1, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    const/4 v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_1

    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v5

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isProfileOwner(I)Z
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$8(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$onPackageUninstalledInternal$16(I)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "permission grant or revoke changed gids"

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$3(II)V
    .locals 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private mayManageRolePermission(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    nop

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 11

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :goto_2
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permissions from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ignored: instant apps cannot define new permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    :goto_3
    if-eqz p3, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    move v9, v2

    nop

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v9, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;

    move-object v2, v10

    move-object v3, p0

    move v4, v9

    move-object v5, p1

    move-object v6, p3

    move v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v10}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p3, v2

    nop

    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAutoRevokePermissionsMode()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getGrantedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method private onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v1, p5

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p5, v0

    invoke-direct {p0, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    array-length v1, p5

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget v3, p5, v2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_3

    :cond_2
    invoke-direct {p0, p3, p4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeSharedUserPermissionsForDeletedPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)I

    move-result v4

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, p2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readLegacyPermissionState()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v1

    :goto_1
    nop

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    new-instance v6, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    return-void
.end method

.method private removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move-object v5, v6

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/Permission;->isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 27

    move-object/from16 v15, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v16, 0x9004b

    const/16 v17, 0x14

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    const/4 v0, 0x1

    new-array v10, v0, [Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v1

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v11}, Landroid/util/IntArray;-><init>(I)V

    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v11}, Landroid/util/IntArray;-><init>(I)V

    new-instance v14, Lcom/android/server/pm/permission/PermissionManagerService$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_6

    :cond_0
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    :cond_1
    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v8

    move/from16 v18, v8

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v6, v8

    if-lez v6, :cond_5

    const/4 v6, 0x0

    array-length v7, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_4

    aget-object v2, v8, v0

    move/from16 v20, v6

    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object/from16 v21, v2

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    move-object/from16 v21, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    goto :goto_1

    :cond_4
    move/from16 v20, v6

    :goto_2
    if-eqz v6, :cond_5

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    :cond_5
    const/16 v0, 0x3e8

    invoke-direct {v15, v12, v3, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    const/16 v6, 0x17

    if-ge v7, v6, :cond_6

    if-eqz v18, :cond_6

    const/16 v6, 0x48

    move/from16 v19, v6

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    :goto_3
    nop

    const v20, 0x9004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v6, p0

    move/from16 v23, v7

    move-object v7, v12

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v25, v9

    move/from16 v9, v20

    move-object/from16 v20, v10

    move/from16 v10, v19

    move/from16 v26, v11

    move/from16 v11, v21

    move-object/from16 v21, v12

    move/from16 v12, p2

    move/from16 v13, v22

    invoke-direct/range {v6 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    if-nez v18, :cond_7

    goto :goto_5

    :cond_7
    and-int/lit8 v6, v0, 0x14

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    and-int/lit8 v6, v0, 0x20

    if-nez v6, :cond_c

    const v6, 0x8000

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    move/from16 v22, v23

    goto :goto_4

    :cond_9
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_b

    move/from16 v13, v23

    invoke-direct {v15, v3, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v21

    move-object v8, v3

    move/from16 v11, p2

    move/from16 v22, v13

    move-object v13, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    goto :goto_5

    :cond_a
    move/from16 v22, v13

    goto :goto_5

    :cond_b
    move/from16 v22, v23

    goto :goto_5

    :cond_c
    move/from16 v22, v23

    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v6, p0

    move-object/from16 v7, v21

    move-object v8, v3

    move/from16 v11, p2

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    :goto_6
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_d
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    const/4 v0, 0x0

    aget-boolean v1, v20, v0

    if-eqz v1, :cond_e

    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRemoved()V

    :cond_e
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_f

    move-object/from16 v2, v25

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v2, v25

    goto :goto_8

    :cond_10
    move-object/from16 v2, v25

    :goto_8
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V
    .locals 42

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-ne v13, v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v6, [I

    aput v13, v0, v15

    :goto_0
    move-object v5, v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/16 v17, 0x0

    move-object v13, v4

    move-object v4, v0

    move/from16 v41, v17

    move/from16 v17, v1

    move/from16 v1, v41

    :goto_1
    if-ge v1, v6, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v2

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {v8, v9, v14, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v4, :cond_3

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v12

    :cond_3
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-direct {v8, v9, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-direct {v8, v9, v14, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    if-nez v3, :cond_6

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v12

    :cond_6
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-direct {v8, v9, v14, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-nez v13, :cond_8

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v12

    :cond_8
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p4

    move-object/from16 v2, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    move-object/from16 v18, v2

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v12, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v0, :cond_c

    array-length v0, v5

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget v2, v5, v1

    move/from16 v19, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {v12, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    goto :goto_3

    :cond_c
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    array-length v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1f

    move-object/from16 v19, v2

    move-object/from16 v1, v18

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_57

    :try_start_3
    aget v18, v5, v2

    move/from16 v20, v18

    move/from16 v21, v0

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1d

    move-object/from16 v22, v5

    move/from16 v5, v20

    :try_start_4
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    move/from16 v18, v2

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    move-object/from16 v23, v12

    if-eqz v20, :cond_14

    :try_start_5
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v20, :cond_d

    :try_start_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v30, v3

    move-object/from16 v25, v7

    move-object/from16 v3, v20

    move/from16 v12, v24

    move-object/from16 v20, v13

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v25, v7

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object v7, v1

    move-object/from16 v19, v3

    move/from16 v23, v6

    move/from16 v1, v17

    goto/16 :goto_26

    :cond_d
    :try_start_7
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v24, v20

    const/16 v20, 0x2710

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v25

    move-object/from16 v26, v25

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v27, v25

    const/16 v25, 0x0

    move/from16 v12, v20

    move-object/from16 v20, v13

    move/from16 v13, v25

    :goto_5
    move-object/from16 v25, v7

    move/from16 v7, v27

    if-ge v13, v7, :cond_e

    move/from16 v27, v7

    move-object/from16 v7, v26

    :try_start_8
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    nop

    move-object/from16 v29, v7

    invoke-interface/range {v26 .. v26}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v30, v3

    move-object/from16 v3, v24

    :try_start_9
    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    nop

    invoke-interface/range {v26 .. v26}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v12, v7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v3

    move-object/from16 v7, v25

    move-object/from16 v26, v29

    move-object/from16 v3, v30

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v2, p4

    move-object v7, v1

    move-object/from16 v27, v15

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v23, v6

    goto/16 :goto_26

    :cond_e
    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v3, v24

    move-object/from16 v29, v26

    :goto_6
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v24, v3

    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_f

    move-object/from16 v3, v24

    goto :goto_7

    :cond_f
    move-object/from16 v26, v7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v13

    const-string v13, "android"

    invoke-static {v7, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    const/16 v7, 0x2000

    invoke-virtual {v2, v3, v7, v7}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_11
    const/16 v7, 0x17

    if-ge v12, v7, :cond_12

    const/16 v7, 0x48

    invoke-virtual {v2, v3, v7, v7}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_12
    move-object/from16 v3, v24

    move-object/from16 v7, v26

    goto :goto_7

    :cond_13
    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    move-object v1, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v25, v7

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object v7, v1

    move-object/from16 v19, v3

    move/from16 v23, v6

    move/from16 v1, v17

    goto/16 :goto_26

    :cond_14
    move-object/from16 v30, v3

    move-object/from16 v25, v7

    move-object/from16 v20, v13

    :goto_8
    move-object v3, v2

    const/4 v7, 0x0

    if-eqz v10, :cond_16

    iget-object v12, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v12

    if-nez v12, :cond_15

    new-instance v12, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v12, v2}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    move-object v3, v12

    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    move-object v12, v3

    goto :goto_9

    :cond_15
    nop

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v12

    invoke-direct {v8, v12, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/List;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v1, v12

    const/4 v12, 0x1

    move/from16 v17, v12

    move-object v12, v3

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v2, p4

    move-object v7, v1

    move-object/from16 v27, v15

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    goto/16 :goto_26

    :cond_16
    const/4 v13, 0x0

    :cond_17
    move-object v12, v3

    :goto_9
    :try_start_a
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1b

    move-object/from16 v24, v1

    :try_start_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1a

    move-object v13, v1

    const/4 v1, 0x0

    move-object/from16 v41, v24

    move/from16 v24, v7

    move-object/from16 v7, v41

    :goto_a
    if-ge v1, v6, :cond_52

    :try_start_c
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_16

    move-object/from16 v27, v26

    move/from16 v26, v6

    :try_start_d
    iget-object v6, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    move-object/from16 v29, v13

    move-object/from16 v13, v27

    invoke-virtual {v6, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    nop

    move-object/from16 v27, v15

    :try_start_e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_14

    const/16 v10, 0x17

    if-lt v15, v10, :cond_18

    const/4 v15, 0x1

    goto :goto_b

    :cond_18
    const/4 v15, 0x0

    :goto_b
    const/16 v28, 0x0

    if-nez v6, :cond_1a

    if-eqz v11, :cond_19

    :try_start_f
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    goto/16 :goto_26

    :cond_19
    :goto_c
    move/from16 v31, v1

    move-object/from16 v39, v4

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    goto/16 :goto_1f

    :cond_1a
    :try_start_10
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_14

    if-nez v10, :cond_21

    :try_start_11
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    const-string v10, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v31, v1

    goto :goto_f

    :cond_1c
    :goto_d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move/from16 v31, v1

    goto :goto_f

    :cond_1d
    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v32, v31

    const/16 v31, 0x0

    move/from16 v11, v31

    :goto_e
    move/from16 v31, v1

    move/from16 v1, v32

    if-ge v11, v1, :cond_20

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual/range {v32 .. v32}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v34, v33

    move/from16 v33, v1

    invoke-virtual/range {v32 .. v32}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object/from16 v1, v34

    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1f

    move-object/from16 v28, v1

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_f

    :cond_1e
    move-object/from16 v1, v34

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v31

    move/from16 v32, v33

    goto :goto_e

    :cond_20
    move/from16 v33, v1

    goto :goto_f

    :cond_21
    move/from16 v31, v1

    :goto_f
    :try_start_12
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v15, :cond_22

    move-object/from16 v39, v4

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    goto/16 :goto_1f

    :cond_22
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_14

    if-eqz v10, :cond_23

    :try_start_13
    iget-object v10, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :cond_23
    const/4 v10, 0x1

    :try_start_14
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    if-eqz v11, :cond_24

    :try_start_15
    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v11

    if-nez v11, :cond_24

    iget-object v11, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-static {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-nez v11, :cond_24

    const/4 v10, 0x0

    :cond_24
    :try_start_16
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11

    if-eqz v11, :cond_26

    if-nez v10, :cond_25

    goto :goto_10

    :cond_25
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    :cond_26
    :goto_10
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    if-eqz v11, :cond_2d

    :try_start_17
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v11, :cond_28

    :try_start_18
    invoke-static {v4, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v11, :cond_27

    goto :goto_11

    :cond_27
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    goto/16 :goto_13

    :cond_28
    :goto_11
    move-object/from16 v11, v30

    :try_start_19
    invoke-static {v11, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v30
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v30, :cond_29

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    :try_start_1a
    invoke-static {v3, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2a

    goto :goto_12

    :cond_29
    move-object/from16 v30, v3

    move-object/from16 v3, v25

    :goto_12
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v25

    if-nez v25, :cond_2a

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v25

    if-eqz v25, :cond_2e

    :cond_2a
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v25
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-nez v25, :cond_2b

    goto :goto_13

    :cond_2b
    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    :cond_2c
    move-object/from16 v30, v3

    move-object/from16 v3, v25

    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :catchall_7
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    goto/16 :goto_26

    :cond_2d
    move-object/from16 v11, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v25

    :cond_2e
    :goto_13
    :try_start_1b
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v25
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    if-eqz v25, :cond_35

    :try_start_1c
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v25
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-eqz v25, :cond_30

    :try_start_1d
    invoke-static {v4, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v25
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    if-eqz v25, :cond_2f

    goto :goto_14

    :cond_2f
    move/from16 v25, v10

    move-object/from16 v10, v20

    goto/16 :goto_16

    :catchall_8
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_30
    :goto_14
    move/from16 v25, v10

    move-object/from16 v10, v20

    :try_start_1e
    invoke-static {v10, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_33

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v20

    if-eqz v20, :cond_31

    invoke-static {v3, v13}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_32

    :cond_31
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v20

    if-nez v20, :cond_32

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v20

    if-eqz v20, :cond_36

    :cond_32
    invoke-virtual {v12, v13}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_36

    :cond_33
    :goto_15
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v20
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-eqz v20, :cond_34

    const/16 v20, 0x1

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move/from16 v24, v20

    move-object/from16 v36, v23

    goto/16 :goto_1f

    :cond_34
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v23

    goto/16 :goto_1f

    :catchall_9
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move-object/from16 v33, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v36, v23

    move/from16 v23, v26

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :catchall_a
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v23, v26

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_35
    move/from16 v25, v10

    move-object/from16 v10, v20

    :cond_36
    :goto_16
    :try_start_1f
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v20

    if-eqz v20, :cond_50

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v20

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v32
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    nop

    move-object/from16 v33, v10

    move-object/from16 v10, v23

    :try_start_20
    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v34
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-eqz v34, :cond_37

    :try_start_21
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v35
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    goto :goto_17

    :catchall_b
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_37
    const/16 v35, 0x0

    :goto_17
    move/from16 v36, v35

    const/16 v35, 0x0

    nop

    move-object/from16 v37, v1

    :try_start_22
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    and-int/lit16 v1, v1, 0x3800

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_18

    :cond_38
    const/4 v1, 0x0

    :goto_18
    nop

    move-object/from16 v38, v3

    :try_start_23
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_19

    :cond_39
    const/4 v3, 0x0

    :goto_19
    if-eqz v15, :cond_45

    if-eqz v23, :cond_3d

    if-eqz v20, :cond_3d

    if-nez v1, :cond_3c

    if-eqz v34, :cond_3a

    :try_start_24
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v39

    if-eqz v39, :cond_3a

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v39
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    if-eqz v39, :cond_3a

    const/16 v35, 0x1

    goto :goto_1a

    :catchall_c
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_3a
    :goto_1a
    if-nez v3, :cond_3b

    move-object/from16 v39, v4

    move/from16 v4, v36

    or-int/lit16 v4, v4, 0x4000

    const/16 v35, 0x1

    move/from16 v36, v4

    goto :goto_1c

    :cond_3b
    move-object/from16 v39, v4

    move/from16 v4, v36

    goto :goto_1c

    :cond_3c
    move-object/from16 v39, v4

    move/from16 v4, v36

    goto :goto_1b

    :cond_3d
    move-object/from16 v39, v4

    move/from16 v4, v36

    if-eqz v23, :cond_3e

    if-eqz v32, :cond_3e

    if-nez v1, :cond_3e

    if-nez v3, :cond_3e

    or-int/lit16 v4, v4, 0x4000

    const/16 v35, 0x1

    move/from16 v36, v4

    goto :goto_1c

    :cond_3e
    :goto_1b
    move/from16 v36, v4

    :goto_1c
    and-int/lit8 v4, v36, 0x40

    if-eqz v4, :cond_3f

    and-int/lit8 v36, v36, -0x41

    const/16 v35, 0x1

    :cond_3f
    and-int/lit8 v4, v36, 0x8

    if-eqz v4, :cond_40

    :try_start_25
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-direct {v8, v13, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_40

    and-int/lit8 v36, v36, -0x9

    const/16 v35, 0x1

    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto/16 :goto_1e

    :catchall_d
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v36, v10

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move/from16 v10, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_40
    if-eqz v23, :cond_41

    if-eqz v20, :cond_41

    if-eqz v1, :cond_44

    :cond_41
    if-eqz v34, :cond_42

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v4

    if-nez v4, :cond_43

    :cond_42
    if-eqz v28, :cond_44

    :cond_43
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    if-nez v4, :cond_44

    const/16 v35, 0x1

    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto/16 :goto_1e

    :cond_44
    move-object/from16 v40, v11

    move/from16 v4, v36

    move-object/from16 v36, v10

    goto :goto_1e

    :cond_45
    move-object/from16 v39, v4

    move/from16 v4, v36

    if-nez v34, :cond_46

    move-object/from16 v36, v10

    :try_start_26
    const-string v10, "android"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    move-object/from16 v40, v11

    :try_start_27
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_47

    or-int/lit8 v4, v4, 0x48

    const/16 v35, 0x1

    goto :goto_1d

    :catchall_e
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_46
    move-object/from16 v36, v10

    move-object/from16 v40, v11

    :cond_47
    :goto_1d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_48

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v10

    if-eqz v10, :cond_48

    const/4 v10, 0x1

    move/from16 v35, v10

    :cond_48
    if-eqz v23, :cond_4a

    if-nez v20, :cond_49

    if-eqz v32, :cond_4a

    :cond_49
    if-nez v1, :cond_4a

    if-nez v3, :cond_4a

    or-int/lit16 v4, v4, 0x4000

    const/16 v35, 0x1

    :cond_4a
    :goto_1e
    if-eqz v23, :cond_4e

    if-nez v20, :cond_4b

    if-eqz v32, :cond_4c

    :cond_4b
    if-eqz v1, :cond_4e

    :cond_4c
    if-eqz v3, :cond_4e

    and-int/lit16 v4, v4, -0x4001

    if-nez v15, :cond_4d

    or-int/lit8 v4, v4, 0x40

    :cond_4d
    const/16 v35, 0x1

    :cond_4e
    if-eqz v35, :cond_4f

    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v10

    move-object v7, v10

    :cond_4f
    const v10, 0x3fbff

    invoke-virtual {v2, v6, v10, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    nop

    goto :goto_1f

    :catchall_f
    move-exception v0

    move-object/from16 v36, v10

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :catchall_10
    move-exception v0

    move-object/from16 v36, v10

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :cond_50
    move-object/from16 v37, v1

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v33, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v23

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    move/from16 v24, v1

    :cond_51
    :goto_1f
    add-int/lit8 v1, v31, 0x1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v6, v26

    move-object/from16 v15, v27

    move-object/from16 v13, v29

    move-object/from16 v3, v30

    move-object/from16 v20, v33

    move-object/from16 v23, v36

    move-object/from16 v25, v38

    move-object/from16 v4, v39

    move-object/from16 v30, v40

    goto/16 :goto_a

    :catchall_11
    move-exception v0

    move/from16 v10, p2

    goto/16 :goto_21

    :catchall_12
    move-exception v0

    move-object/from16 v33, v10

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :catchall_13
    move-exception v0

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v25, v3

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move/from16 v23, v26

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto/16 :goto_26

    :catchall_14
    move-exception v0

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v19, v30

    goto/16 :goto_26

    :catchall_15
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v19, v30

    goto/16 :goto_26

    :catchall_16
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move/from16 v10, p2

    move-object/from16 v2, p4

    move-object/from16 v20, v4

    move/from16 v23, v6

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v19, v30

    goto/16 :goto_26

    :cond_52
    move/from16 v31, v1

    move-object/from16 v39, v4

    move/from16 v26, v6

    move-object/from16 v29, v13

    move-object/from16 v27, v15

    move-object/from16 v33, v20

    move-object/from16 v36, v23

    move-object/from16 v38, v25

    move-object/from16 v40, v30

    move-object/from16 v30, v3

    if-nez v24, :cond_53

    move/from16 v10, p2

    if-eqz v10, :cond_54

    goto :goto_20

    :cond_53
    move/from16 v10, p2

    :goto_20
    :try_start_28
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    if-nez v1, :cond_54

    :try_start_29
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    if-eqz v1, :cond_55

    goto :goto_22

    :catchall_17
    move-exception v0

    :goto_21
    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v40

    goto/16 :goto_26

    :cond_54
    :goto_22
    :try_start_2a
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    if-eqz v1, :cond_56

    :cond_55
    :try_start_2b
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    goto :goto_23

    :cond_56
    const/4 v6, 0x1

    :goto_23
    :try_start_2c
    invoke-direct {v8, v2, v9, v5, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[I)[I

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_19

    move-object/from16 v11, v38

    move-object v7, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move/from16 v15, v18

    move-object/from16 v13, v19

    move-object v2, v12

    move-object/from16 v18, v30

    move-object/from16 v19, v40

    move-object/from16 v3, v16

    move-object/from16 v20, v39

    move-object/from16 v4, p1

    move-object/from16 v25, v11

    move-object/from16 v11, v22

    move/from16 v22, v5

    move-object/from16 v5, v18

    move/from16 v23, v26

    move/from16 v26, v6

    move/from16 v6, v22

    :try_start_2d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    add-int/lit8 v2, v15, 0x1

    move-object v5, v11

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v0, v21

    move/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v15, v27

    move-object/from16 v12, v36

    move-object/from16 v11, p3

    move-object/from16 v19, v13

    move-object/from16 v13, v33

    goto/16 :goto_4

    :catchall_18
    move-exception v0

    move-object/from16 v2, p4

    move/from16 v1, v17

    goto/16 :goto_26

    :catchall_19
    move-exception v0

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move/from16 v23, v26

    move-object/from16 v25, v38

    move-object/from16 v20, v39

    move-object/from16 v19, v40

    move-object/from16 v2, p4

    move/from16 v1, v17

    goto/16 :goto_26

    :catchall_1a
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v24

    goto/16 :goto_26

    :catchall_1b
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v33, v20

    move-object/from16 v11, v22

    move-object/from16 v36, v23

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v24

    goto/16 :goto_26

    :catchall_1c
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v19, v3

    move-object/from16 v2, p4

    move-object v7, v1

    move/from16 v1, v17

    goto/16 :goto_26

    :catchall_1d
    move-exception v0

    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v19, v3

    move-object/from16 v2, p4

    move-object v7, v1

    move/from16 v1, v17

    goto :goto_26

    :cond_57
    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object/from16 v13, v19

    move-object/from16 v19, v3

    :try_start_2e
    monitor-exit v13
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1e

    invoke-direct {v8, v9, v10, v11, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v0

    move-object/from16 v2, p4

    if-eqz v2, :cond_58

    move/from16 v3, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_24

    :cond_58
    move/from16 v3, v17

    :goto_24
    array-length v1, v0

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v1, :cond_59

    aget v4, v0, v15

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    :cond_59
    return-void

    :catchall_1e
    move-exception v0

    move-object/from16 v2, p4

    move/from16 v3, v17

    move-object v7, v1

    move v1, v3

    goto :goto_26

    :catchall_1f
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v11, v5

    move/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v36, v12

    move-object/from16 v33, v13

    move-object/from16 v27, v15

    move-object v13, v2

    move-object/from16 v2, p4

    move/from16 v1, v17

    move-object/from16 v7, v18

    :goto_26
    :try_start_2f
    monitor-exit v13
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_20

    throw v0

    :catchall_20
    move-exception v0

    goto :goto_26
.end method

.method private restoreRuntimePermissions([BI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[I)[I
    .locals 11

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_3

    const/16 v7, 0x80

    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/pm/permission/PermissionManagerService;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v9, v4}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v9}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0x88

    if-nez v9, :cond_1

    const/4 v8, 0x1

    :cond_1
    and-int/lit8 v9, v6, 0x34

    if-nez v9, :cond_2

    if-eqz v1, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    or-int/lit8 v7, v7, 0x3

    :cond_2
    invoke-virtual {p1, v5, v7, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    invoke-static {p4, p3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p4

    :cond_3
    goto :goto_1

    :cond_4
    return-object p4
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "revokeRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v10, v0, :cond_2

    invoke-direct {v7, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->mayManageRolePermission(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_7

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is managed by role"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " requested by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is not a changeable permission type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p6

    goto/16 :goto_6

    :cond_7
    :goto_1
    :try_start_3
    invoke-direct {v7, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_8

    :try_start_4
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing permissions state for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_8
    :try_start_5
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v13, :cond_a

    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has not requested permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_2
    :try_start_7
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v14, 0x17

    if-ge v13, v14, :cond_b

    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_b

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_b
    :try_start_9
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v13

    and-int/lit8 v14, v13, 0x10

    if-eqz v14, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v14

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_c

    move/from16 v16, v3

    goto :goto_3

    :cond_c
    new-instance v14, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v16, v3

    :try_start_a
    const-string v3, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_d
    move/from16 v16, v3

    :goto_3
    if-nez p3, :cond_f

    and-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot revoke policy fixed permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_4
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_10

    monitor-exit v5

    return-void

    :cond_10
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_11

    const/16 v0, 0x4dd

    invoke-direct {v7, v0, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v12, :cond_13

    if-eqz v2, :cond_12

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v3, p6

    invoke-virtual {v12, v0, v11, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_5

    :cond_12
    move-object/from16 v3, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionRevoked()V

    goto :goto_5

    :cond_13
    move-object/from16 v3, p6

    :goto_5
    if-eqz v2, :cond_14

    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_14
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_6

    :cond_15
    move/from16 v16, v3

    move-object/from16 v3, p6

    :try_start_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p6

    :goto_6
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_16
    move-object/from16 v3, p6

    :try_start_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_4
    move-exception v0

    move-object/from16 v3, p6

    :goto_7
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7

    :cond_17
    move-object/from16 v3, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 21

    move-object/from16 v8, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v9

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v9}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_6

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v15

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v16

    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v8, v3

    move-object v3, v7

    move/from16 v17, v9

    move-object v9, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_3
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    goto :goto_3

    :cond_4
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v17, v9

    goto :goto_3

    :cond_5
    move/from16 v17, v9

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move/from16 v9, v17

    goto :goto_1

    :cond_6
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v7, :cond_2

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, v10

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ILjava/lang/String;ZI)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    return-void
.end method

.method private revokeSharedUserPermissionsForDeletedPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)I"
        }
    .end annotation

    const/16 v0, -0x2710

    if-nez p1, :cond_0

    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v0, -0x2710

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    if-nez v7, :cond_9

    monitor-exit v5

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v8

    if-eqz v8, :cond_a

    move v0, p3

    :cond_a
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_b
    return v0
.end method

.method private revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 22

    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v13, v0

    if-nez v13, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    move v14, v0

    if-nez v14, :cond_3

    if-nez v12, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object v8

    array-length v7, v8

    move v6, v11

    :goto_3
    if-ge v6, v7, :cond_7

    aget v5, v8, v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-ge v3, v4, :cond_6

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    goto/16 :goto_6

    :cond_4
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v16, "171430330"

    aput-object v16, v1, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v10

    const/16 v16, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v16

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v16, 0x0

    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v0

    move/from16 v19, v3

    move-object v3, v10

    move v10, v4

    move v4, v11

    move v11, v5

    move v5, v15

    move/from16 v20, v6

    move v6, v11

    move/from16 v21, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_5
    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    :goto_6
    add-int/lit8 v3, v19, 0x1

    move v4, v10

    move v5, v11

    move-object/from16 v8, v16

    move/from16 v6, v20

    move/from16 v7, v21

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_6
    move/from16 v19, v3

    move v10, v4

    move v11, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v16, v8

    add-int/lit8 v6, v20, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_7
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Ljava/util/List;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ")Z"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_2
    if-ltz v4, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionState;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method private setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    int-to-float v0, p4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v4

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_11

    if-nez v1, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_2
    nop

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_e

    if-eqz v5, :cond_a

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    if-eqz v1, :cond_c

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/SecurityException;

    const-string v8, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_4
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_11

    if-nez v1, :cond_11

    if-eqz v4, :cond_f

    goto :goto_6

    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v6, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    :goto_5
    return v2

    :cond_11
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    const/4 v2, 0x0

    move-object v7, v0

    move v8, v1

    move v9, v2

    :goto_0
    if-ge v9, v14, :cond_e

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_7

    :cond_0
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v9

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    goto/16 :goto_9

    :cond_1
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    if-nez v7, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v1

    :cond_2
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v7

    goto :goto_1

    :cond_3
    move-object/from16 v16, v7

    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v6, v15, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    move v1, v7

    const/4 v2, 0x0

    move/from16 v3, p3

    move/from16 v17, v3

    :goto_2
    const/4 v3, 0x1

    if-eqz v17, :cond_7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    not-int v4, v3

    and-int v17, v17, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    or-int/lit16 v2, v2, 0x2000

    if-eqz v12, :cond_4

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    or-int/lit16 v1, v1, 0x2000

    goto :goto_3

    :cond_4
    and-int/lit16 v1, v1, -0x2001

    goto :goto_3

    :pswitch_2
    or-int/lit16 v2, v2, 0x800

    if-eqz v12, :cond_5

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    or-int/lit16 v1, v1, 0x800

    goto :goto_3

    :cond_5
    and-int/lit16 v1, v1, -0x801

    goto :goto_3

    :pswitch_3
    or-int/lit16 v2, v2, 0x1000

    if-eqz v12, :cond_6

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x1000

    goto :goto_3

    :cond_6
    and-int/lit16 v1, v1, -0x1001

    nop

    :goto_3
    goto :goto_2

    :cond_7
    if-ne v7, v1, :cond_8

    move/from16 v26, v9

    move-object/from16 v7, v16

    goto/16 :goto_8

    :cond_8
    const/16 v18, 0x1

    and-int/lit16 v4, v7, 0x3800

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    move/from16 v19, v4

    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v3, v5

    :goto_5
    move/from16 v20, v3

    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_b

    if-nez v20, :cond_b

    if-eqz v0, :cond_b

    or-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v1, -0x5

    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-ge v3, v4, :cond_c

    if-nez v19, :cond_c

    if-eqz v20, :cond_c

    or-int/lit8 v2, v2, 0x40

    or-int/lit8 v1, v1, 0x40

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_6

    :cond_c
    move/from16 v21, v1

    move/from16 v22, v2

    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move/from16 v4, v22

    move/from16 v5, v21

    move-object/from16 v24, v6

    move v6, v15

    move/from16 v25, v7

    move/from16 v7, p4

    move/from16 v26, v9

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    move-object/from16 v7, v16

    move/from16 v8, v18

    goto :goto_8

    :cond_d
    move-object/from16 v24, v6

    move/from16 v26, v9

    :goto_7
    :try_start_3
    monitor-exit v1

    :goto_8
    add-int/lit8 v9, v26, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v26, v9

    :goto_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_e
    move/from16 v26, v9

    if-eqz v8, :cond_12

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    if-nez v7, :cond_f

    return-void

    :cond_f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_12

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    invoke-direct {v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_b

    :cond_10
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_11

    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v13, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_c

    :cond_11
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_12
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .locals 8

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x62

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x61

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    move v2, v7

    :cond_1
    invoke-virtual {v1, v5, v0, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v7

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    return-void
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I[I)[I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_0

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v13

    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move-object/from16 v7, p6

    :goto_2
    if-ge v8, v6, :cond_c

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-eqz v11, :cond_b

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const/16 v13, 0x80

    invoke-virtual {v1, v12, v13, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_3
    move/from16 v13, p5

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object/from16 v14, p1

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    :goto_3
    move-object/from16 v16, v3

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v15, 0x1

    move/from16 v20, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    goto :goto_3

    :cond_5
    move/from16 v19, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 p6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    const-string v5, "Unknown source permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v20, v5

    :goto_4
    if-nez v15, :cond_8

    move-object/from16 v2, p3

    goto :goto_5

    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    :cond_8
    move-object/from16 v2, p3

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_5

    :cond_9
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    goto :goto_5

    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown new permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v20

    goto/16 :goto_2

    :cond_c
    return-object v7
.end method

.method private shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_a

    if-nez v1, :cond_0

    if-eqz v2, :cond_a

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    :goto_0
    if-eqz v7, :cond_5

    if-eqz v1, :cond_2

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    invoke-static {v7, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    invoke-static {p1, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v6, v3

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    move v0, v6

    :goto_3
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_a
    if-nez v0, :cond_b

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_b

    const/4 v0, 0x1

    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v0, 0x1

    :cond_e
    if-nez v0, :cond_f

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v0

    :cond_10
    if-nez v0, :cond_11

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v0, 0x1

    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    :cond_12
    if-nez v0, :cond_13

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v0, 0x1

    :cond_13
    if-nez v0, :cond_14

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isDocumenter()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    if-nez v0, :cond_15

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v0, 0x1

    :cond_15
    if-nez v0, :cond_16

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    if-nez v0, :cond_17

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v0, 0x1

    :cond_17
    if-nez v0, :cond_18

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    if-nez v0, :cond_19

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    nop

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    nop

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Shell can delegate permissions only to one UID at a time"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopShellPermissionIdentityDelegationInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private systemReady()V
    .locals 5

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature|privileged permissions not in privapp-permissions allowlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateAllPermissions(Ljava/lang/String;Z)V
    .locals 8

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updatePermissionFlags"

    invoke-direct {v7, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v10, v0, :cond_3

    and-int/lit8 v0, p3, -0x11

    and-int/lit8 v1, p4, -0x11

    and-int/lit8 v0, v0, -0x21

    and-int/lit8 v1, v1, -0x21

    and-int/lit8 v1, v1, -0x41

    and-int/lit16 v1, v1, -0x1001

    and-int/lit16 v1, v1, -0x801

    and-int/lit16 v1, v1, -0x2001

    and-int/lit16 v1, v1, -0x4001

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move/from16 v1, p3

    move/from16 v2, p4

    :goto_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_7

    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_7

    aget-object v14, v5, v13

    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    move v4, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    move v4, v0

    :goto_3
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    invoke-direct {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v13

    if-nez v13, :cond_8

    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and user "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :cond_8
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v4, :cond_9

    const-string v10, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " isn\'t requested by package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :cond_9
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result v10

    move v0, v10

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    invoke-direct {v7, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_a
    if-eqz v0, :cond_c

    if-eqz v12, :cond_c

    if-nez v6, :cond_b

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-static {v11, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    goto :goto_4

    :cond_b
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    aput v11, v5, v10

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    invoke-virtual {v12, v5, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    :cond_c
    :goto_4
    return-void

    :cond_d
    :try_start_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)Z
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-nez v1, :cond_3

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    if-eqz p2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :try_start_1
    monitor-exit v6

    goto :goto_1

    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    :goto_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " that used to be declared by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    aget v7, v4, v6

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v9, p0, v3, v7, p3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_a
    return v0

    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-nez v1, :cond_4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :try_start_1
    monitor-exit v6

    goto :goto_1

    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    return v0

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x3

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    move v5, v0

    :goto_0
    nop

    nop

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct {v7, v10, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)Z

    move-result v12

    or-int v0, v9, v12

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, p4, 0x1

    move v13, v0

    goto :goto_0

    :cond_0
    move/from16 v13, p4

    :goto_0
    const-wide/32 v14, 0x40000

    const-string v0, "restorePermissionState"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v0, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    :goto_1
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_2
    if-eqz v8, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_3

    move-object/from16 v14, p3

    invoke-static {v14, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v2, v17

    goto :goto_2

    :cond_3
    move-object/from16 v14, p3

    :cond_4
    move/from16 v2, v16

    :goto_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v14, p3

    :goto_3
    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private writeLegacyPermissionState()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[I)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeLegacyPermissions(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_2

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    :cond_2
    return v1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    new-instance v6, Lcom/android/server/pm/permission/Permission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    invoke-virtual {v3, v5, p1, v2}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_5
    return v4

    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-static {v4, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    int-to-float v0, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    :goto_1
    and-int/lit8 v4, p2, 0x6

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 8

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    invoke-static {v3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    move-object v3, v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "186113473"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    return-object v3

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 10

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-nez v5, :cond_1

    monitor-exit v4

    return-object v2

    :cond_1
    invoke-virtual {v5, p3, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    move-object v5, v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x534e4554

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "183122164"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    return-object v5

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    nop

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v7, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method public isAutoRevokeExempted(Ljava/lang/String;I)Z
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v6, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v3, v7

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getAllPermissionGroups$0$PermissionManagerService(IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGrantedPermissionsInternal$7$PermissionManagerService(ILcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const v2, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "140256621"

    aput-object v5, v4, v3

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v1

    :cond_1
    return v3
.end method

.method public synthetic lambda$onPackageAddedInternal$15$PermissionManagerService(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$queryPermissionsByGroup$1$PermissionManagerService(IILandroid/content/pm/PermissionInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$readLegacyPermissionState$13$PermissionManagerService([ILcom/android/server/pm/PackageSetting;)V
    .locals 9

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p1, v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    nop

    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$4$PermissionManagerService(ILjava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$5$PermissionManagerService([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    array-length v13, v10

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_1

    aget v8, v10, v15

    invoke-direct {v9, v12, v11, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_0

    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "72710897"

    aput-object v2, v1, v14

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as the group changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move/from16 v5, p6

    move v6, v8

    move-object v7, v0

    move/from16 v18, v8

    move-object/from16 v8, v17

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v18, v8

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    move/from16 v18, v8

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$6$PermissionManagerService([ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v13

    const/16 v0, 0x2710

    if-ge v13, v0, :cond_0

    return-void

    :cond_0
    array-length v14, v10

    const/4 v15, 0x0

    move v8, v15

    :goto_0
    if-ge v8, v14, :cond_3

    aget v7, v10, v8

    invoke-direct {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual {v9, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    const v18, 0x8034

    if-nez v16, :cond_2

    const v0, 0x8034

    and-int v0, v17, v0

    if-nez v0, :cond_2

    invoke-static {v7, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v19

    const/4 v0, 0x2

    const/4 v1, 0x3

    const v2, 0x534e4554

    const-string v3, " due to definition change"

    const-string v4, " from package "

    const-string v5, "Revoking permission "

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v20, "195338390"

    aput-object v20, v1, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v21, "154505240"

    aput-object v21, v2, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    const v6, 0x534e4554

    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "168319670"

    aput-object v2, v1, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v20, v5

    move/from16 v5, p4

    move-object v15, v6

    move v6, v7

    move/from16 v22, v7

    move-object v7, v0

    move/from16 v23, v8

    move-object/from16 v8, v20

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v15, v6

    move/from16 v22, v7

    move/from16 v23, v8

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    move/from16 v22, v7

    move/from16 v23, v8

    :goto_3
    add-int/lit8 v8, v23, 0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public synthetic lambda$systemReady$12$PermissionManagerService(I)V
    .locals 2

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$updatePermissionFlagsForAllApps$2$PermissionManagerService(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    aget-boolean v3, p2, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updatePermissionSourcePackage$10$PermissionManagerService(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 6

    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$11$PermissionManagerService(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$updatePermissions$9$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 8

    if-ne p6, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;I)V

    return-void
.end method

.method public synthetic lambda$writeLegacyPermissionState$14$PermissionManagerService([ILcom/android/server/pm/PackageSetting;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->reset()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    array-length v7, v2

    :goto_0
    if-ge v0, v7, :cond_4

    aget v8, v2, v0

    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_0

    :try_start_1
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing user state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v16, v5

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move/from16 v16, v5

    goto/16 :goto_3

    :cond_0
    :try_start_2
    iget-object v10, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v9, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v10, :cond_2

    :try_start_5
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing permission state for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " and user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v16, v5

    goto :goto_2

    :cond_2
    :try_start_6
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v11

    invoke-virtual {v4, v11, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    new-instance v15, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v16, v5

    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v5

    invoke-direct {v15, v1, v2, v3, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    move-object v1, v15

    invoke-virtual {v4, v1, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    goto :goto_1

    :cond_3
    move/from16 v16, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v5

    monitor-exit v6

    return-void

    :catchall_1
    move-exception v0

    move/from16 v16, v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v3

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerAttributionSource(Landroid/content/AttributionSourceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    nop

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method public setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result v2

    return v2
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canShowRequestPermissionRationale for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v2, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_1

    return v8

    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    return v8

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v7, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v11, 0x16

    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_3

    return v8

    :cond_3
    iget-object v12, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_4

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    :catchall_0
    move-exception v0

    move-wide v15, v9

    goto :goto_5

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v13, :cond_5

    and-int/lit16 v13, v7, 0x3800

    if-nez v13, :cond_5

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v8

    :cond_5
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, 0x1

    :try_start_6
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide v15, v9

    const-wide/32 v8, 0x8c7dff3

    :try_start_7
    invoke-interface {v0, v8, v9, v2, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_7

    nop

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    move-wide v15, v9

    :cond_7
    nop

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide v15, v9

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v15, v9

    :goto_1
    :try_start_8
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    goto :goto_0

    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_8

    move v8, v14

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    return v8

    :catchall_2
    move-exception v0

    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_3
    move-exception v0

    move-wide v15, v9

    :goto_5
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JII)V
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

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
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

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 12

    move-object v10, p0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v11

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    if-eqz v11, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_1

    :goto_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;)V

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p3

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v8

    iget-object v0, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v8

    move/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    :goto_0
    if-eq v8, v0, :cond_2

    move v5, p2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    :goto_1
    const/4 v9, 0x1

    new-array v10, v9, [Z

    iget-object v11, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I[ZII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_3

    iget-object v1, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v9, [I

    aput v7, v2, v0

    invoke-virtual {v1, v2, v9}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    :cond_3
    return-void
.end method
