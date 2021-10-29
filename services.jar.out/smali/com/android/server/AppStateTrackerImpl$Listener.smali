.class public abstract Lcom/android/server/AppStateTrackerImpl$Listener;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    return-void
.end method

.method private onExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method private onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method private onPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    return-void
.end method

.method private onPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    return-void
.end method

.method private onRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(ILjava/lang/String;Z)V

    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " toggled into fg service restriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$Listener;->stopForegroundServicesForUidPackage(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    return-void
.end method

.method private onUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public removeAlarmsForUid(I)V
    .locals 0

    return-void
.end method

.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unblockAlarmsForUid(I)V
    .locals 0

    return-void
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 0

    return-void
.end method

.method public updateAlarmsForUid(I)V
    .locals 0

    return-void
.end method

.method public updateAllAlarms()V
    .locals 0

    return-void
.end method

.method public updateAllJobs()V
    .locals 0

    return-void
.end method

.method public updateJobsForUid(IZ)V
    .locals 0

    return-void
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method
