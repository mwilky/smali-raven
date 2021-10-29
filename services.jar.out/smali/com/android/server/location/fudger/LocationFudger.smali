.class public Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MIN_ACCURACY_M:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field private static final OLD_WEIGHT:D


# instance fields
.field private final mAccuracyM:F

.field private mCachedCoarseLocation:Landroid/location/Location;

.field private mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field private mCachedFineLocation:Landroid/location/Location;

.field private mCachedFineLocationResult:Landroid/location/LocationResult;

.field private final mClock:Ljava/time/Clock;

.field private mLatitudeOffsetM:D

.field private mLongitudeOffsetM:D

.field private mNextUpdateRealtimeMs:J

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    return-void
.end method

.method constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    return-void
.end method

.method private static metersToDegreesLatitude(D)D
    .locals 2

    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .locals 4

    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private nextRandomOffset()D
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized updateOffsets()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v4, v2

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v6

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static wrapLatitude(D)D
    .locals 2

    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    :cond_1
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    sub-double/2addr p0, v0

    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    add-double/2addr p0, v0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->updateOffsets()V

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    div-double v7, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    iget v7, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v7, v7

    invoke-static {v7, v8, v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v7

    div-double v9, v3, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    iget v9, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v0, v9}, Landroid/location/Location;->setAccuracy(F)V

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object v0

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public resetOffsets()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    return-void
.end method
