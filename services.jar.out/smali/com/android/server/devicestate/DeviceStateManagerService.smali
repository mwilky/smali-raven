.class public final Lcom/android/server/devicestate/DeviceStateManagerService;
.super Lcom/android/server/SystemService;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;,
        Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;,
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;,
        Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DeviceStateManagerService"


# instance fields
.field private mBaseState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

.field private mCommittedState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

.field private mDeviceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPolicyWaitingForState:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestsPendingStatusChange:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$jiU5VXokYcJUH2EJ6jFQstyxfLE(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->commitPendingState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    invoke-direct {v0, p1}, Lcom/android/server/policy/DeviceStatePolicyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    nop

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    nop

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    nop

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestsPendingStatusChange:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    invoke-interface {p2}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$1;)V

    invoke-interface {v0, v1}, Lcom/android/server/devicestate/DeviceStateProvider;->setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-direct {v0, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestsPendingStatusChange:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/devicestate/DeviceStateManagerService;IIILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/devicestate/DeviceStateManagerService;->requestStateInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelRequestInternal(ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/devicestate/DeviceStateManagerService;[Lcom/android/server/devicestate/DeviceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V

    return-void
.end method

.method private cancelRequestInternal(ILandroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(I)V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyRequestsOfStatusChangeIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No known request for the given token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no registered callback."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private commitPendingState()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-static {v2}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(I)V

    :cond_0
    const/16 v2, 0x15e

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChanged()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyRequestsOfStatusChangeIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "DEVICE STATE MANAGER (dumpsys device_state)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCommittedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOverrideState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered processes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$500(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override requests: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": mPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$700(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$500(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRequestedState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$300(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$800(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->statusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

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

.method private getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    new-instance v3, Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get the current DeviceStateInfo before the initial state has been committed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStateLocked(I)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedStateIdentifiers()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

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

.method private getSupportedStateIdentifiersLocked()[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$500(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isSupportedStateLocked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method private notifyDeviceStateInfoChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to notify callbacks with service lock held."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyPolicyIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "DeviceStateManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-interface {v0, v1, v2}, Lcom/android/server/devicestate/DeviceStatePolicy;->configureDeviceForState(ILjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyRequestsOfStatusChangeIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestsPendingStatusChange:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestsPendingStatusChange:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestsPendingStatusChange:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->notifyStatusIfNeeded()V

    add-int/lit8 v0, v0, 0x1

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

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to notify requests with service lock held."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Landroid/hardware/devicestate/IDeviceStateManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IDeviceStateManagerCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private requestStateInternal(IIILandroid/os/IBinder;)V
    .locals 15

    move-object v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v10, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    move-object v11, v1

    invoke-virtual {v11}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    :goto_0
    move-object v13, v1

    if-eqz v13, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(I)V

    :cond_1
    new-instance v14, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-virtual {v11}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/devicestate/DeviceState;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v0

    move-object/from16 v4, p4

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;Lcom/android/server/devicestate/DeviceState;I)V

    move-object v1, v14

    iget-object v2, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$600(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, v7, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v12, v12}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(IZ)V

    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyRequestsOfStatusChangeIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v3, p1

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move/from16 v3, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request has already been made for the supplied token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move/from16 v3, p1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no registered callback."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private setBaseState(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v3, v2}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-static {v5}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$300(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v4

    move v1, v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChanged()V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyRequestsOfStatusChangeIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void

    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base state is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updatePendingStateLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->isSupportedStateLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    iput-boolean v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    return v2
.end method

.method private updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-static {v5}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/devicestate/DeviceStateManagerService;->isSupportedStateLocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    move v1, v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChanged()V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyRequestsOfStatusChangeIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

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
.method getBaseState()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    return-object v0
.end method

.method getCommittedState()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getOverrideState()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

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

.method getPendingState()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSupportedStates()[Lcom/android/server/devicestate/DeviceState;
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/devicestate/DeviceState;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceState;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

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

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    const-string v1, "device_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
