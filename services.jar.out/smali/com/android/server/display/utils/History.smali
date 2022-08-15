.class public Lcom/android/server/display/utils/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field public mClock:Ljava/time/Clock;

.field public mCount:I

.field public mEnd:I

.field public mSize:I

.field public mStart:I

.field public mTimes:[J

.field public mValues:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/utils/History;-><init>(ILjava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(ILjava/time/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/utils/History;->mSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/utils/History;->mCount:I

    iput v0, p0, Lcom/android/server/display/utils/History;->mStart:I

    iput v0, p0, Lcom/android/server/display/utils/History;->mEnd:I

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/display/utils/History;->mTimes:[J

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/display/utils/History;->mValues:[F

    iput-object p2, p0, Lcom/android/server/display/utils/History;->mClock:Ljava/time/Clock;

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/utils/History;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/History;->mEnd:I

    iget-object v2, p0, Lcom/android/server/display/utils/History;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/server/display/utils/History;->mValues:[F

    iget v1, p0, Lcom/android/server/display/utils/History;->mEnd:I

    aput p1, v0, v1

    iget p1, p0, Lcom/android/server/display/utils/History;->mCount:I

    iget v0, p0, Lcom/android/server/display/utils/History;->mSize:I

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/utils/History;->mCount:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/display/utils/History;->mStart:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/display/utils/History;->mStart:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/utils/History;->mEnd:I

    return-void
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
    iget v2, p0, Lcom/android/server/display/utils/History;->mCount:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/display/utils/History;->mStart:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/display/utils/History;->mSize:I

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/utils/History;->mTimes:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Lcom/android/server/display/utils/History;->mValues:[F

    aget v2, v5, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/display/utils/History;->mCount:I

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
