.class Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private prioritizeExistenceOver(III)I
    .locals 1

    if-le p2, p1, :cond_0

    if-gt p3, p1, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-gt p3, p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    if-le p2, p1, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    iget v4, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v6, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    iget v6, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v7, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v6

    if-eqz v6, :cond_2

    return v6

    :cond_2
    const/16 v7, 0x27

    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    invoke-direct {v0, v7, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v7

    if-eqz v7, :cond_3

    return v7

    :cond_3
    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v8

    if-eqz v8, :cond_4

    return v8

    :cond_4
    const/16 v9, 0x22

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v11, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v9

    if-eqz v9, :cond_5

    return v9

    :cond_5
    iget-wide v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v12, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v10, v12

    const/4 v11, -0x1

    if-gez v10, :cond_6

    return v11

    :cond_6
    iget-wide v12, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v14, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v12, v14

    const/4 v12, 0x1

    if-lez v10, :cond_7

    return v12

    :cond_7
    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    if-eq v10, v13, :cond_8

    iget v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->basePriority:I

    sub-int/2addr v5, v10

    return v5

    :cond_8
    iget-wide v13, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    move v10, v6

    iget-wide v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v13, v5

    if-gez v5, :cond_9

    return v11

    :cond_9
    iget-wide v5, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_a

    move v5, v12

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p1

    return p1
.end method
