.class public final Lcom/android/server/systemcaptions/SystemCaptionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "SystemCaptionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerService;",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040249

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->newServiceLocked(IZ)Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;
    .locals 2

    new-instance v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;-><init>(Lcom/android/server/systemcaptions/SystemCaptionsManagerService;Ljava/lang/Object;ZI)V

    invoke-virtual {v0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->initializeLocked()V

    return-object v0
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    check-cast p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->onServiceRemoved(Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->destroyLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
