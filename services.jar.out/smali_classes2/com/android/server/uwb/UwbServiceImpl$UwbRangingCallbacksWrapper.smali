.class Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;
.super Landroid/uwb/IUwbRangingCallbacks$Stub;
.source "UwbServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uwb/UwbServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwbRangingCallbacksWrapper"
.end annotation


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

.field private mIsValid:Z

.field private final mSessionHandle:Landroid/uwb/SessionHandle;

.field final synthetic this$0:Lcom/android/server/uwb/UwbServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/uwb/UwbServiceImpl;Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-direct {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p3, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    iput-object p4, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z

    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->linkToDeath()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)Landroid/uwb/IUwbRangingCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    return-object v0
.end method

.method private linkToDeath()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0}, Landroid/uwb/IUwbRangingCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UwbServiceImpl"

    const-string v3, "Unable to link to client death event."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeClientAndUnlinkToDeath()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v0}, Lcom/android/server/uwb/UwbServiceImpl;->access$000(Lcom/android/server/uwb/UwbServiceImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v1}, Lcom/android/server/uwb/UwbServiceImpl;->access$000(Lcom/android/server/uwb/UwbServiceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0}, Landroid/uwb/IUwbRangingCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "UwbServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client died: ending session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->removeClientAndUnlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/uwb/UwbServiceImpl;->stopRanging(Landroid/uwb/SessionHandle;)V

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/uwb/UwbServiceImpl;->closeRanging(Landroid/uwb/SessionHandle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "UwbServiceImpl"

    const-string v2, "Remote exception while handling client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$onRangingResult$0$UwbServiceImpl$UwbRangingCallbacksWrapper()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->this$0:Lcom/android/server/uwb/UwbServiceImpl;

    invoke-static {v0}, Lcom/android/server/uwb/UwbServiceImpl;->access$100(Lcom/android/server/uwb/UwbServiceImpl;)Lcom/android/server/uwb/UwbInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    const-string v2, "uwb ranging result"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/uwb/UwbInjector;->checkUwbRangingPermissionForDataDelivery(Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->removeClientAndUnlinkToDeath()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingOpened(Landroid/uwb/SessionHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbRangingCallbacks;->onRangingOpened(Landroid/uwb/SessionHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "UwbServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delivering ranging result because of permission denial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->mExternalCb:Landroid/uwb/IUwbRangingCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbRangingCallbacks;->onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
