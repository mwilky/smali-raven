.class public Lcom/android/server/smartspace/SmartspacePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SmartspacePerUserService.java"

# interfaces
.implements Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/smartspace/SmartspacePerUserService;",
        "Lcom/android/server/smartspace/SmartspaceManagerService;",
        ">;",
        "Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->reconnect()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;
    .locals 11

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-boolean v1, v1, Lcom/android/server/smartspace/SmartspaceManagerService;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v10, Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v2}, Lcom/android/server/smartspace/SmartspaceManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-boolean v9, v2, Lcom/android/server/smartspace/SmartspaceManagerService;->verbose:Z

    const-string v4, "android.service.smartspace.SmartspaceService"

    move-object v2, v10

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/smartspace/RemoteSmartspaceService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    return-object v0
.end method

.method static synthetic lambda$notifySmartspaceEventLocked$2(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$onCreateSmartspaceSessionLocked$0(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroyLocked$6(Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/smartspace/ISmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerSmartspaceUpdatesLocked$4(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static synthetic lambda$requestSmartspaceUpdateLocked$3(Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/smartspace/ISmartspaceService;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$unregisterSmartspaceUpdatesLocked$5(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Landroid/service/smartspace/ISmartspaceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method private resurrectSessionsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iget-object v3, v2, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->resurrectSessionLocked(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateRemoteServiceLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateSmartspaceSessionLocked$1$SmartspacePerUserService(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifySmartspaceEventLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda6;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resurrect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked()V

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-direct {v1, p2, p1, p3, v2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->linkToDeath()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->destroy()V

    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailureOrTimeout(): timed out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method onPackageRestartedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method onPackageUpdatedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/smartspace/RemoteSmartspaceService;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->onServiceDied(Lcom/android/server/smartspace/RemoteSmartspaceService;)V

    return-void
.end method

.method public registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->addCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V

    :cond_1
    return-void
.end method

.method public requestSmartspaceUpdateLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method protected resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/smartspace/ISmartspaceService;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/smartspace/RemoteSmartspaceService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public unregisterSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->removeCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V

    :cond_1
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->isEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->updateRemoteServiceLocked()V

    :cond_1
    :goto_0
    return v0
.end method
