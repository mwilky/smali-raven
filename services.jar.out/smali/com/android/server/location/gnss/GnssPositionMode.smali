.class public Lcom/android/server/location/gnss/GnssPositionMode;
.super Ljava/lang/Object;
.source "GnssPositionMode.java"


# instance fields
.field public final mLowPowerMode:Z

.field public final mMinInterval:I

.field public final mMode:I

.field public final mPreferredAccuracy:I

.field public final mPreferredTime:I

.field public final mRecurrence:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    iput p2, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    iput p3, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    iput p4, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    iput p5, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    iput-boolean p6, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/location/gnss/GnssPositionMode;

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    iget v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    iget-boolean v2, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mRecurrence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mPreferredTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
