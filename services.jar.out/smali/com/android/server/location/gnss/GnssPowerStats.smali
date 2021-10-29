.class public Lcom/android/server/location/gnss/GnssPowerStats;
.super Ljava/lang/Object;
.source "GnssPowerStats.java"


# instance fields
.field private final mElapsedRealtimeFlags:I

.field private final mElapsedRealtimeNanos:J

.field private final mElapsedRealtimeUncertaintyNanos:D

.field private final mMultibandAcquisitionModeEnergyMilliJoule:D

.field private final mMultibandTrackingModeEnergyMilliJoule:D

.field private final mOtherModesEnergyMilliJoule:[D

.field private final mSinglebandAcquisitionModeEnergyMilliJoule:D

.field private final mSinglebandTrackingModeEnergyMilliJoule:D

.field private final mTotalEnergyMilliJoule:D


# direct methods
.method public constructor <init>(IJDDDDDD[D)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "time: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, " +/- "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    :cond_0
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerTotal()Z

    move-result v0

    const-string/jumbo v1, "mJ"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "total power: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "single-band tracking power: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "multi-band tracking power: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandAcquisition()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "single-band acquisition power: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandAcquisition()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "multi-band acquisition power: "

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerOtherModes()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    array-length v2, v2

    if-ge v0, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "other mode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(D)V

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    return-wide v0
.end method

.method public getMultibandAcquisitionModeEnergyMilliJoule()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getMultibandTrackingModeEnergyMilliJoule()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getOtherModesEnergyMilliJoule()[D
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    return-object v0
.end method

.method public getSinglebandAcquisitionModeEnergyMilliJoule()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getSinglebandTrackingModeEnergyMilliJoule()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    return-wide v0
.end method

.method public getTotalEnergyMilliJoule()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    return-wide v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .locals 2

    iget v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validate()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void
.end method
