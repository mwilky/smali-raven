.class public Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "GnssMetrics.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v14, p2

    const/16 v2, 0x275a

    if-ne v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v4, v4, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v6, v6, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v8, v8, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v8}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v10, v10, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v10}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v12, v12, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v12}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v12

    iget-object v15, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v15, v15, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v15

    int-to-long v14, v15

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v16

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    move-wide/from16 v30, v2

    int-to-long v1, v1

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v20

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    move-wide/from16 v26, v1

    iget-wide v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    move-wide/from16 v28, v0

    move/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-static/range {v1 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v15, p2

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v34, 0x0

    goto/16 :goto_1

    :cond_0
    move-object v15, v14

    const/16 v1, 0x2775

    move/from16 v2, p1

    if-ne v2, v1, :cond_3

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssMetrics;->-$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssMetrics;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats()V

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMetrics;->-$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssMetrics;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;

    move-result-object v0

    const/16 v16, 0x1

    if-nez v0, :cond_1

    return v16

    :cond_1
    const/16 v1, 0xa

    new-array v13, v1, [D

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getOtherModesEnergyMilliJoule()[D

    move-result-object v3

    array-length v4, v3

    if-ge v4, v1, :cond_2

    array-length v1, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v13, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    invoke-static {v3, v14, v13, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v3

    double-to-long v3, v3

    move v11, v2

    move-wide v1, v3

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getTotalEnergyMilliJoule()D

    move-result-wide v3

    const-wide v31, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v31

    double-to-long v3, v3

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getSinglebandTrackingModeEnergyMilliJoule()D

    move-result-wide v5

    mul-double v5, v5, v31

    double-to-long v5, v5

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getMultibandTrackingModeEnergyMilliJoule()D

    move-result-wide v7

    mul-double v7, v7, v31

    double-to-long v7, v7

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getSinglebandAcquisitionModeEnergyMilliJoule()D

    move-result-wide v9

    mul-double v9, v9, v31

    double-to-long v9, v9

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPowerStats;->getMultibandAcquisitionModeEnergyMilliJoule()D

    move-result-wide v17

    mul-double v14, v17, v31

    double-to-long v14, v14

    move v0, v11

    move-wide v11, v14

    const/4 v14, 0x0

    aget-wide v17, v13, v14

    mul-double v14, v17, v31

    double-to-long v14, v14

    move-object/from16 v33, v13

    const/16 v34, 0x0

    move-wide v13, v14

    aget-wide v15, v33, v16

    move-wide/from16 v35, v1

    mul-double v0, v15, v31

    double-to-long v0, v0

    move-object/from16 v2, p2

    move-wide v15, v0

    const/4 v0, 0x2

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v17, v0

    const/4 v0, 0x3

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v19, v0

    const/4 v0, 0x4

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v21, v0

    const/4 v0, 0x5

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v23, v0

    const/4 v0, 0x6

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v25, v0

    const/4 v0, 0x7

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v0, 0x8

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v29, v0

    const/16 v0, 0x9

    aget-wide v0, v33, v0

    mul-double v0, v0, v31

    double-to-long v0, v0

    move-wide/from16 v31, v0

    move/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-static/range {v0 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v34

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
