.class Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private final mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

.field private mGestureStartTimeNs:J

.field private mNear:Z

.field private mNearDurationNs:J

.field private final mPercentCoveredThreshold:F

.field private mPercentNear:F

.field private mPrevNearTimeNs:J


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/DistanceClassifier;Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    iput-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    const-string p1, "systemui"

    const-string p2, "brightline_falsing_proximity_percent_covered_threshold"

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    return-void
.end method

.method private static getReason(Lcom/android/systemui/classifier/FalsingClassifier$Result;FF)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const/4 p0, 0x0

    const-string/jumbo p1, "{percentInProximity=%f, threshold=%f, distanceClassifier=%s}"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update(ZJ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set prevNearTimeNs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method calculateFalsingResult(IDD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    if-eqz p1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    if-eq p1, p2, :cond_3

    const/16 p2, 0xf

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    iget p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    cmpl-float p1, p1, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mDistanceClassifier:Lcom/android/systemui/classifier/DistanceClassifier;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/DistanceClassifier;->isLongSwipe()Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result p4

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    iget p5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentCoveredThreshold:F

    invoke-static {p1, p4, p5}, Lcom/android/systemui/classifier/ProximityClassifier;->getReason(Lcom/android/systemui/classifier/FalsingClassifier$Result;FF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p2, p3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getCovered()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getTimestampNs()J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor is: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " at time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    return-void
.end method

.method onSessionEnded()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method onSessionStarted()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    iget-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPrevNearTimeNs:J

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNs:J

    sub-long/2addr v3, v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gesture duration, Proximity duration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->logDebug(Ljava/lang/String;)V

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDurationNs:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mPercentNear:F

    :cond_5
    :goto_1
    return-void
.end method
