.class public Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "BaseAppStateTimeSlotEvents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateEvents<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mCurSlotStartTime:[J

.field public final mTimeSlotSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    iput-wide p4, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    new-array p1, p3, [J

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    return-void
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public add(Lcom/android/server/am/BaseAppStateEvents;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_a

    instance-of v2, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v2

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v4

    if-ge v3, v4, :cond_a

    iget-object v4, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v9, v9, v3

    iget-object v11, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v11, v11, v3

    iget-wide v13, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v15, v3

    int-to-long v2, v5

    mul-long/2addr v13, v2

    sub-long v2, v9, v13

    iget-wide v13, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    mul-long/2addr v13, v4

    sub-long v4, v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    :goto_1
    cmp-long v18, v16, v13

    if-gtz v18, :cond_6

    cmp-long v18, v16, v2

    if-ltz v18, :cond_4

    cmp-long v18, v16, v9

    if-gtz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    :goto_2
    cmp-long v19, v16, v4

    if-ltz v19, :cond_5

    cmp-long v19, v16, v11

    if-gtz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    :goto_3
    add-int v18, v18, v19

    move-wide/from16 v19, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long v16, v16, v2

    move-wide/from16 v2, v19

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v6, v2, v15

    cmp-long v2, v9, v11

    if-gez v2, :cond_7

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v3, v3, v15

    aput-wide v3, v2, v15

    :cond_7
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v2, v15

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v2

    move v5, v15

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(JI)V

    goto :goto_6

    :cond_8
    :goto_4
    move v5, v3

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v3, v3, v5

    aput-wide v3, v2, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v5, v3

    :goto_6
    add-int/lit8 v3, v5, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_7
    return-void
.end method

.method public addEvent(JI)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, p3

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v2, v3, p3

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v5, v3, p3

    :goto_0
    cmp-long v3, v5, v0

    if-gez v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v7, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long/2addr v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aput-wide v0, v2, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(JI)V

    return-void
.end method

.method public getCurrentSlotStartTime(I)J
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getSlotStartTime(J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    rem-long v0, p1, v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getTotalEventsSince(JJI)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide p1

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v2, p5

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide p3

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v2, p5

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v2, p5

    :goto_0
    cmp-long p5, v2, p1

    if-ltz p5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    cmp-long v4, v2, p3

    if-gtz v4, :cond_2

    add-int/2addr v1, p5

    :cond_2
    iget-wide v4, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public trimEvents(JI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v1, v1, p3

    iget-wide v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    int-to-long v5, p3

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    :goto_0
    cmp-long p3, v1, p1

    if-gez p3, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
