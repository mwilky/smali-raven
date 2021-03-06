.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.SC"


# instance fields
.field protected final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final mService:Lcom/android/server/job/JobSchedulerService;

.field protected final mStateChangedListener:Lcom/android/server/job/StateChangedListener;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getConstants()Lcom/android/server/job/JobSchedulerService$Constants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    return-void
.end method

.method public abstract dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
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
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method public abstract maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 0

    return-void
.end method

.method public onSystemServicesReady()V
    .locals 0

    return-void
.end method

.method public onUidPriorityChangedLocked(II)V
    .locals 0

    return-void
.end method

.method public onUserAddedLocked(I)V
    .locals 0

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 0

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 0

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reevaluateStateLocked(I)V
    .locals 0

    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method protected wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->wouldBeReadyWithConstraint(I)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wouldBeReadyWithConstraintLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " constraint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " readyWithConstraint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.SC"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1
.end method
