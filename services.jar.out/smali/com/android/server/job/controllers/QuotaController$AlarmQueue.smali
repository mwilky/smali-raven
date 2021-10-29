.class Lcom/android/server/job/controllers/QuotaController$AlarmQueue;
.super Ljava/util/PriorityQueue;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/PriorityQueue<",
        "Landroid/util/Pair<",
        "Lcom/android/server/job/controllers/QuotaController$Package;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 4

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method remove(Lcom/android/server/job/controllers/QuotaController$Package;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/QuotaController$Package;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method
