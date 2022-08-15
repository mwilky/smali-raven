.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "AppBatteryExemptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryExemptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidBatteryStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurations<",
        "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .locals 6

    const-string v2, ""

    const/4 v3, 0x5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 28
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_12

    :cond_0
    if-eqz p1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_11

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v22, v6, v20

    if-nez v22, :cond_3

    cmp-long v22, v8, v20

    if-eqz v22, :cond_2

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    const/16 v22, 0x1

    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v10, v22

    :goto_3
    cmp-long v23, v6, v8

    if-nez v23, :cond_c

    if-eqz v13, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_7
    if-eqz v15, :cond_9

    if-nez v13, :cond_8

    if-eqz v14, :cond_9

    :cond_8
    sub-long v6, v6, v18

    goto :goto_4

    :cond_9
    const-wide/16 v6, 0x0

    :goto_4
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    xor-int/lit8 v14, v14, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v7

    goto :goto_5

    :cond_a
    move-object v6, v2

    move-wide/from16 v7, v20

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    :cond_b
    move-wide/from16 v26, v7

    goto :goto_9

    :cond_c
    if-gez v23, :cond_10

    if-eqz v13, :cond_d

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_d
    if-eqz v15, :cond_e

    if-eqz v13, :cond_e

    sub-long v6, v6, v18

    goto :goto_6

    :cond_e
    const-wide/16 v6, 0x0

    :goto_6
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    goto :goto_a

    :cond_f
    move-object v6, v2

    goto :goto_a

    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_11
    if-eqz v15, :cond_12

    if-eqz v14, :cond_12

    sub-long v8, v8, v18

    goto :goto_7

    :cond_12
    const-wide/16 v8, 0x0

    :goto_7
    add-long v16, v16, v8

    xor-int/lit8 v14, v14, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v8}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    goto :goto_8

    :cond_13
    move-object v8, v3

    :goto_8
    move-wide/from16 v26, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    :goto_9
    move-wide/from16 v8, v20

    move-wide/from16 v20, v26

    :goto_a
    if-eqz v13, :cond_14

    if-eqz v14, :cond_14

    move/from16 v15, v22

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    if-nez v13, :cond_15

    if-eqz v14, :cond_16

    :cond_15
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v18

    :cond_16
    if-nez v13, :cond_18

    if-eqz v14, :cond_17

    goto :goto_c

    :cond_17
    const/4 v7, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    move/from16 v7, v22

    :goto_d
    if-eq v10, v7, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz v10, :cond_1a

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v24

    sub-long v10, v24, v10

    move-object/from16 p1, v0

    move-object v12, v1

    add-long v0, v10, v16

    const-wide/16 v22, 0x0

    cmp-long v16, v0, v22

    if-eqz v16, :cond_19

    long-to-double v10, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v10, v10, v16

    long-to-double v0, v0

    div-double/2addr v10, v0

    invoke-virtual {v5, v10, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, v5}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->update(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    goto :goto_e

    :cond_19
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->update(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    :goto_e
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-wide/from16 v16, v22

    goto :goto_f

    :cond_1a
    move-object/from16 p1, v0

    move-object v12, v1

    const-wide/16 v22, 0x0

    :goto_f
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    move-object/from16 p1, v0

    move-object v12, v1

    const-wide/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p1

    move-object v2, v6

    move-object v1, v12

    move-wide/from16 v6, v20

    goto/16 :goto_0

    :cond_1c
    :goto_11
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0

    :cond_1d
    :goto_12
    return-object p1
.end method

.method public addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getLastEvent(I)Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v4

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBatteryUsageSince(JJI)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move-object v7, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    invoke-static {v1}, Lcom/android/server/am/BaseAppStateTracker;->stateIndexToType(I)I

    move-result v0

    and-int/2addr v0, p5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    move-object v7, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getBatteryUsageSince(JJLjava/util/LinkedList;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getBatteryUsageSince(JJLjava/util/LinkedList;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getLastEvent(I)Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
