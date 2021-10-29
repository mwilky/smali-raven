.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSimCallManagerRequests:Landroid/util/IntArray;

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

.field private mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.components.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/TelecomLoaderService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    :cond_0
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v3, 0x4000041

    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

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

.method private registerCarrierConfigChangedReceiver()V
    .locals 6

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerDefaultAppNotifier()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method private registerDefaultAppProviders()V
    .locals 2

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method private setupServiceRepository()V
    .locals 2

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/TelecomLoaderService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    new-instance v1, Lcom/android/server/telecom/InternalServiceRepository;

    invoke-direct {v1, v0}, Lcom/android/server/telecom/InternalServiceRepository;-><init>(Lcom/android/server/DeviceIdleInternal;)V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    return-void
.end method

.method private updateSimCallManagerPermissions(I)V
    .locals 5

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating sim call manager permissions for userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelecomLoaderService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$registerDefaultAppNotifier$3$TelecomLoaderService(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method public synthetic lambda$registerDefaultAppProviders$0$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$registerDefaultAppProviders$1$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$registerDefaultAppProviders$2$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget v7, v3, v6

    nop

    invoke-virtual {v1, v7}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->setupServiceRepository()V

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
