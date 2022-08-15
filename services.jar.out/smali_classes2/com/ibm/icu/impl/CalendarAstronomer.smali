.class public Lcom/ibm/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;,
        Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;,
        Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;,
        Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
    }
.end annotation


# static fields
.field public static final AUTUMN_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final FIRST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

.field public static final FULL_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

.field public static final LAST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

.field public static final NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

.field public static final SUMMER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final VERNAL_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;


# instance fields
.field public transient eclipObliquity:D

.field public fGmtOffset:J

.field public fLatitude:D

.field public fLongitude:D

.field public transient julianCentury:D

.field public transient julianDay:D

.field public transient meanAnomalySun:D

.field public transient moonEclipLong:D

.field public transient moonLongitude:D

.field public transient moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

.field public transient siderealT0:D

.field public transient siderealTime:D

.field public transient sunLongitude:D

.field public time:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->VERNAL_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-direct {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->SUMMER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->AUTUMN_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v7, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct {v0, v7, v8}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->FIRST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->FULL_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v7, v8}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->LAST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D

    mul-double/2addr p3, v0

    invoke-static {p3, p4}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    iget-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D

    const-wide/high16 p3, 0x4038000000000000L    # 24.0

    mul-double/2addr p1, p3

    const-wide p3, 0x414b774000000000L    # 3600000.0

    mul-double/2addr p1, p3

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p1, p3

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    return-void
.end method

.method public static final norm2PI(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final normPI(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p0, p1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static final normalize(DD)D
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final clearCache()V
    .locals 2

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    return-void
.end method

.method public final eclipticObliquity()D
    .locals 6

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    const-wide v2, 0x4037707570c564f9L    # 23.439292

    const-wide v4, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D

    return-wide v0
.end method

.method public final eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticObliquity()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    new-instance v14, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    mul-double v15, v4, v0

    mul-double/2addr v12, v2

    sub-double v12, v15, v12

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v8, v0

    mul-double/2addr v10, v2

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-direct {v14, v6, v7, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V

    return-object v14
.end method

.method public getJulianDay()D
    .locals 4

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    const-wide v2, -0xbfc83e532200L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D

    return-wide v0
.end method

.method public final getSiderealOffset()D
    .locals 6

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    const-wide v2, 0x401aca1c8e5eb098L    # 6.697374558

    const-wide v4, 0x40a2c01a48b65237L    # 2400.051336

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    const-wide v2, 0x3efb1e471b7b0e47L    # 2.5862E-5

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    invoke-static {v4, v5, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D

    return-wide v0
.end method

.method public getSunLongitude()D
    .locals 4

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D

    return-wide v0
.end method

.method public getSunLongitude(D)[D
    .locals 5

    const-wide v0, 0x4142ad09c0000000L    # 2447891.5

    sub-double/2addr p1, v0

    const-wide v0, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide p1

    const-wide v0, 0x4013818b33ddeee0L    # 4.87650757829735

    add-double/2addr p1, v0

    const-wide v0, 0x4013bdaf8cee89a2L    # 4.935239984568769

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide p1

    const/4 v2, 0x2

    new-array v2, v2, [D

    const-wide v3, 0x3f911d3671ac14c6L    # 0.016713

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D

    move-result-wide v3

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v0

    const/4 p0, 0x0

    aput-wide v0, v2, p0

    const/4 p0, 0x1

    aput-wide p1, v2, p0

    return-object v2
.end method

.method public getSunPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method

.method public getSunRiseSet(Z)J
    .locals 11

    iget-wide v9, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long v2, v9, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2932e00

    add-long/2addr v2, v0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x6

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x6

    :goto_0
    const-wide/32 v4, 0x36ee80

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    new-instance v1, Lcom/ibm/icu/impl/CalendarAstronomer$2;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/CalendarAstronomer$2;-><init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V

    const-wide v3, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    const-wide v5, 0x3f8441500d4c900dL    # 0.009890199094634533

    const-wide/16 v7, 0x1388

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/impl/CalendarAstronomer;->riseOrSet(Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    move-result-wide v0

    invoke-virtual {p0, v9, v10}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    return-wide v0
.end method

.method public final lstToUT(D)J
    .locals 6

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    move-result-wide v0

    sub-double/2addr p1, v0

    const-wide v0, 0x3fefe9a1dd91bf50L    # 0.9972695663

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long/2addr v0, v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    sub-long/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    mul-double/2addr p1, v2

    double-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final riseOrSet(Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;->eval()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v4

    neg-double v5, v1

    iget-wide v7, v4, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz p2, :cond_1

    sub-double v5, v7, v5

    :cond_1
    iget-wide v9, v4, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    add-double/2addr v5, v9

    const-wide/high16 v9, 0x4038000000000000L    # 24.0

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer;->lstToUT(D)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    sub-long v7, v5, v7

    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    if-ge v3, v5, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, p7

    if-gtz v5, :cond_0

    :cond_2
    iget-wide v1, v4, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, p3, v5

    add-double v5, v5, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    mul-double/2addr v3, v5

    const-wide v5, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v3, v5

    div-double/2addr v3, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v1

    double-to-long v1, v3

    iget-wide v3, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    if-eqz p2, :cond_3

    neg-long v1, v1

    :cond_3
    add-long/2addr v3, v1

    return-wide v3
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->clearCache()V

    return-void
.end method

.method public final trueAnomaly(DD)D
    .locals 8

    move-wide v0, p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    sub-double v2, v0, v2

    sub-double/2addr v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p0, v2, v4

    if-gtz p0, :cond_0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    add-double v2, p3, v6

    sub-double/2addr v6, p3

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    return-wide p2
.end method
