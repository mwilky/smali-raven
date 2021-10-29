.class public Lcom/android/server/VpnManagerService;
.super Landroid/net/IVpnManager$Stub;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VpnManagerService$Dependencies;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/VpnManagerService$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private final mUserAllContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field protected final mVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/VpnManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/IVpnManager$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/VpnManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$1;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/VpnManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$2;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->makeHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getINetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->registerReceivers()V

    const-string v0, "VpnManagerService starting up"

    invoke-static {v0}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VpnManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->ensureRunningOnHandlerThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/VpnManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->onVpnLockdownReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStarted(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/VpnManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/VpnManagerService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VpnManagerService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;
    .locals 2

    new-instance v0, Lcom/android/server/VpnManagerService;

    new-instance v1, Lcom/android/server/VpnManagerService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VpnManagerService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VpnManagerService;-><init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V

    return-object v0
.end method

.method private enforceControlAlwaysOnVpnPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v2, "VpnManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "VpnManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSettingsPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private ensureRunningOnHandlerThread()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running on VpnManagerService thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_0
    move-exception v3

    const/4 v4, -0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method private getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    return-object v0
.end method

.method private getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;
    .locals 5

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/UnderlyingNetworkInfo;->getOwnerUid()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method private isLockdownVpnEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing always-on VPN package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;I)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting always-on VPN package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUserAdded(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserStarted(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-eqz v1, :cond_0

    const-string v2, "Starting user already has a VPN"

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v9, Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    new-instance v8, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {v8}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    move-object v2, v9

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V

    move-object v1, v9

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

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

.method private onUserStopped(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    const-string v2, "Stopped user has no VPN"

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserUnlocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onVpnLockdownReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerReceivers()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.android.server.action.LOCKDOWN_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const-string v4, "android.permission.NETWORK_STACK"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    :cond_1
    return-void
.end method

.method private startAlwaysOnVpn(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyCallingUidAndPackage(Ljava/lang/String;I)V
    .locals 4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteVpnProfile(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->deleteVpnProfile(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "VPNs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public factoryReset()V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v5, v4, v5}, Lcom/android/server/VpnManagerService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v9, "LOCKDOWN_VPN"

    invoke-virtual {v8, v9}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z

    iput-boolean v4, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    invoke-direct {p0, v5}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-boolean v6, v4, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_3

    const-string v3, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-virtual {p0, v3, v5, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v6, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    const-string v3, "[Legacy VPN]"

    invoke-virtual {p0, v5, v3, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_5
    :goto_2
    return-void
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

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

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

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

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVpnLockdownAllowlist(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdownAllowlist()Ljava/util/List;

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

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

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

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

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

.method public isVpnLockdownEnabled(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/connectivity/Vpn;->provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    monitor-exit v0

    return v2

    :cond_3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy VPN is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startVpnProfile(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfile(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopVpnProfile(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->stopVpnProfile(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    return-void
.end method

.method public updateLockdownVpn()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v0, "Lockdown VPN only available to system process or AID_SYSTEM"

    invoke-static {v0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    monitor-exit v0

    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lockdown VPN configured invalid profile "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    monitor-exit v0

    return v4

    :cond_3
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v3}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    if-nez v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN for user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not ready yet. Skipping lockdown"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :cond_4
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v8, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v9, v7, v6}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
