.class public Lcom/android/server/notification/RateEstimator;
.super Ljava/lang/Object;
.source "RateEstimator.java"


# instance fields
.field public mInterarrivalTime:D

.field public mLastEventTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    return-void
.end method


# virtual methods
.method public final getInterarrivalEstimate(J)D
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc9999999999998L    # 0.19999999999999996

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public getRate(J)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public update(J)F
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    return v0
.end method
