.class public Lcom/android/server/job/controllers/TareController;
.super Lcom/android/server/job/controllers/StateController;
.source "TareController.java"


# static fields
.field public static final BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final DEBUG:Z


# instance fields
.field public final mAffordabilityCache:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field public mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7kHOe_f8gV7qU-qyA2ctzaXzmF0(Lcom/android/server/job/controllers/TareController;ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/TareController;->lambda$new$0(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Bbeoly53y-qQr2fK0b4nYMe4dA(Lcom/android/server/job/controllers/TareController;Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/TareController;->lambda$dumpControllerStateLocked$3(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeIDVQIba_pFoMgPNvikM6MqIsk(Lcom/android/server/job/controllers/TareController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/TareController;->lambda$onConstantsUpdatedLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$f9Aq5NPseQLtcQ9JRfiKN556Y9k(Lcom/android/server/job/controllers/TareController;JLcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TareController;->lambda$onConstantsUpdatedLocked$1(JLcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 15

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v3, "JobScheduler.TARE"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000004

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v8, 0x1d4c0

    const v10, 0x60000005

    invoke-direct {v7, v10, v2, v8, v9}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v7, 0xea60

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v7, 0x7530

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v4, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v4, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v11, 0x3e8

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000002

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v10, 0x60000003

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const/high16 v9, 0x60000000

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v13, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v14, 0x60000001

    invoke-direct {v13, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v3, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    new-instance p1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/TareController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    iput-object p3, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    const-class p1, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p1, p1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    iput-boolean p1, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    return-void
.end method

.method public static getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    invoke-static {p0}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.TARE"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p0, 0x60000001

    return p0

    :cond_1
    const p0, 0x60000003

    return p0

    :cond_2
    :goto_0
    const p0, 0x60000005

    return p0

    :cond_3
    const p0, 0x60000007

    return p0

    :cond_4
    const p0, 0x60000009

    return p0
.end method

.method private synthetic lambda$dumpControllerStateLocked$3(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .locals 1

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ": "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .locals 6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "JobScheduler.TARE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " affordability for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_7

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    const/4 p3, 0x0

    move v3, p3

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    if-nez p4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, p3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {p0, v4, v0, v1, v5}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$1(JLcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3, p1, p2, v1}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$2()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/TareController;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/android/server/tare/EconomyManagerInternal;->registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    :cond_2
    return-void
.end method

.method public final canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/tare/EconomyManagerInternal;->canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public canScheduleEJ(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const-string p2, "Is enabled: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Affordability cache:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/TareController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, v0}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EJ_MAX_START_BILL"

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EJ_MAX_RUNNING_BILL"

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "EJ_HIGH_START_BILL"

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "EJ_HIGH_RUNNING_BILL"

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "HIGH_START_BILL"

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "HIGH_RUNNING_BILL"

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "DEFAULT_START_BILL"

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "DEFAULT_RUNNING_BILL"

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "LOW_START_BILL"

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "LOW_RUNNING_BILL"

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "MIN_START_BILL"

    return-object p0

    :cond_a
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "MIN_RUNNING_BILL"

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_BILL ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/tare/EconomyManagerInternal;->getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/job/controllers/JobStatus;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/16 v1, 0x1f4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x190

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.TARE"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0
.end method

.method public final getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    const/16 v0, 0x1f4

    if-nez p0, :cond_6

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_5

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_4

    const/16 v1, 0x12c

    if-eq p0, v1, :cond_3

    const/16 v1, 0x190

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got unexpected priority: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.TARE"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0
.end method

.method public final hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public final isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, p3, v1, v2}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/TareController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const-string v3, "JobScheduler.TARE"

    if-nez v2, :cond_0

    const-string v2, "Job is being prepared but doesn\'t have a pre-existing billToJobMap"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v2

    const/16 v4, 0x28

    if-ne v2, v4, :cond_3

    sget-boolean v0, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is top started job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobTareApproved(JZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "JobScheduler.TARE"

    const-string v3, "Job was just unprepared but didn\'t have a pre-existing billToJobMap"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
