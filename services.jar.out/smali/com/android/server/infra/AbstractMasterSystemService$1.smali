.class Lcom/android/server/infra/AbstractMasterSystemService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveServicePackageNameLocked()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveServiceRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v1, Lcom/android/server/infra/AbstractMasterSystemService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method static synthetic lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p4, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v7

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v1, v7}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v8, v7}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    :goto_1
    goto :goto_2

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageDataCleared(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

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

.method public onPackageModified(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageModified(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    nop

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "update cached"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v5, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRemoved(I)V

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

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    nop

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateStarted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " while package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eagerly recreating service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    :cond_6
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
