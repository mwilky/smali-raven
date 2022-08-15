.class public Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .locals 6

    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x27

    iget v1, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    const/16 v0, 0x22

    iget v1, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_5

    return p0

    :cond_5
    iget-wide v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long p0, v0, v3

    const/4 v5, -0x1

    if-gez p0, :cond_6

    return v5

    :cond_6
    cmp-long p0, v0, v3

    const/4 v0, 0x1

    if-lez p0, :cond_7

    return v0

    :cond_7
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p0, v1, :cond_8

    sub-int/2addr v1, p0

    return v1

    :cond_8
    iget-wide p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long p2, p0, v3

    if-gez p2, :cond_9

    return v5

    :cond_9
    cmp-long p0, p0, v3

    if-lez p0, :cond_a

    move v2, v0

    :cond_a
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p0

    return p0
.end method

.method public final prioritizeExistenceOver(III)I
    .locals 0

    if-le p2, p1, :cond_0

    if-gt p3, p1, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-gt p3, p1, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    if-le p2, p1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
