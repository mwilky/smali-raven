.class public Lcom/android/server/tare/CompleteEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "CompleteEconomicPolicy.java"


# instance fields
.field public final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mConsumptionLimit:J

.field public final mCostModifiers:[I

.field public final mEnabledEconomicPolicies:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/EconomicPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxSatiatedBalance:J

.field public final mRewards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->updateMaxBalances()V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    invoke-static {p1}, Lcom/android/server/tare/EconomicPolicy;->dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Cached actions:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v3}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Cached rewards:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v3}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_2
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v3, "(Includes) "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .locals 10

    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v8, v2, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    add-long/2addr v4, v8

    iget-wide v1, v2, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    add-long/2addr v6, v1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/tare/EconomicPolicy$Action;

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getCostModifiers()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    return-object p0
.end method

.method public getHardSatiatedConsumptionLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    return-wide v0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .locals 12

    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v10, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    add-long/2addr v4, v10

    iget-wide v10, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    add-long/2addr v6, v10

    iget-wide v1, v2, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    add-long/2addr v8, v1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/tare/EconomicPolicy$Reward;

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->updateMaxBalances()V

    return-void
.end method

.method public final updateMaxBalances()V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    iget-object v6, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v6}, Lcom/android/server/tare/EconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-wide v4, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxSatiatedBalance:J

    :goto_1
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/EconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-wide v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    return-void
.end method
