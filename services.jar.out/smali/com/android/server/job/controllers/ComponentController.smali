.class public Lcom/android/server/job/controllers/ComponentController;
.super Lcom/android/server/job/controllers/StateController;
.source "ComponentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Component"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

.field private final mServiceInfoCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Component"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v6, Lcom/android/server/job/controllers/ComponentController$1;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/ComponentController$1;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    iput-object v6, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v0

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStateForPackage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/ComponentController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStateForUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/ComponentController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method private clearComponentsForPackageLocked(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getServiceInfoLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/content/pm/ServiceInfo;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job exists for non-existent package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.Component"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v0, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic lambda$updateComponentStateForPackage$0(ILjava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$updateComponentStateForUser$1(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->getServiceInfoLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " component not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Component"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private updateComponentStateForPackage(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    new-instance v1, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateComponentStateForUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    new-instance v1, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateComponentStatesLocked(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    invoke-static {v0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->access$200(Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "-"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ": "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0

    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceInfoCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method
