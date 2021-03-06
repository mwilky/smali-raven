.class public Lcom/android/server/display/utils/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field private mClock:Ljava/time/Clock;

.field private mCount:I

.field private mEnd:I

.field private mSize:I

.field private mStart:I

.field private mTimes:[J

.field private mValues:[F


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

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/display/utils/History;->mValues:[F

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

    iget v0, p0, Lcom/android/server/display/utils/History;->mCount:I

    iget v2, p0, Lcom/android/server/display/utils/History;->mSize:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/utils/History;->mCount:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/utils/History;->mStart:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/display/utils/History;->mStart:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/utils/History;->mEnd:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

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

    aget v5, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/server/display/utils/History;->mCount:I

    if-eq v6, v7, :cond_0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
