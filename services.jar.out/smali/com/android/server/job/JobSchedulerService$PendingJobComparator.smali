.class Lcom/android/server/job/JobSchedulerService$PendingJobComparator;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingJobComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 13

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v1, v2, :cond_1

    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    sub-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    return v5

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_8

    :cond_4
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    const-wide v9, 0x7fffffffffffffffL

    invoke-virtual {v7, v8, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-wide v7, p2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v11, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    invoke-virtual {v11, v12, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    cmp-long v9, v3, v7

    if-gez v9, :cond_5

    return v5

    :cond_5
    cmp-long v9, v3, v7

    if-lez v9, :cond_8

    return v6

    :cond_6
    if-eqz v1, :cond_7

    iget-wide v9, p2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v9, v3, v9

    if-gtz v9, :cond_7

    return v5

    :cond_7
    if-eqz v2, :cond_8

    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v9, v7, v9

    if-gtz v9, :cond_8

    return v6

    :cond_8
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v7, p2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_9

    return v5

    :cond_9
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v7, p2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_a

    move v0, v6

    :cond_a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    return p1
.end method

.method refreshLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v2, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;->mEarliestRegEnqueueTimeCache:Landroid/util/SparseLongArray;

    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
