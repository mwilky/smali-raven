.class Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidConstraintUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mToScheduleStartAlarms:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;

.field public wasJobChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$900(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    invoke-static {v2, p1, v3, v4, v0}, Lcom/android/server/job/controllers/QuotaController;->access$1000(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    xor-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method postProcess()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method prepare()V
    .locals 2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    return-void
.end method
