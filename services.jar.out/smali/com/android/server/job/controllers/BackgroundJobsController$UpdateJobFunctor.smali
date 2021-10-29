.class final Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
.super Ljava/lang/Object;
.source "BackgroundJobsController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateJobFunctor"
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
.field mActiveState:I

.field mChanged:Z

.field mCheckedCount:I

.field mTotalCount:I

.field mUpdateTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/BackgroundJobsController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-wide v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    iget v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method prepare(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    return-void
.end method
