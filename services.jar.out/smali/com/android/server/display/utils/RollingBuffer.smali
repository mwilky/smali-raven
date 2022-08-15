.class public Lcom/android/server/display/utils/RollingBuffer;
.super Ljava/lang/Object;
.source "RollingBuffer.java"


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mSize:I

.field public mStart:I

.field public mTimes:[J

.field public mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    return-void
.end method


# virtual methods
.method public add(JF)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->expandBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    return-void
.end method

.method public final expandBuffer()V
    .locals 7

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [J

    new-array v2, v0, [F

    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    iput v6, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iput-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    return-void
.end method

.method public final getLatestIndexBefore(J)I
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v3

    aget-wide v2, v2, v3

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v0

    return v2
.end method

.method public getTime(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-virtual {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public getValue(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-virtual {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final offsetOf(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v0, p0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCount= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public truncate(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/utils/RollingBuffer;->getLatestIndexBefore(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget-object p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aput-wide p1, p0, v1

    :cond_1
    :goto_0
    return-void
.end method
