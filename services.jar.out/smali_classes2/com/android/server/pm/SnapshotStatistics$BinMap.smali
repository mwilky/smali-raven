.class public Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SnapshotStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinMap"
.end annotation


# instance fields
.field public mBinMap:[I

.field public mCount:I

.field public mMaxBin:I

.field public mUserKey:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    aget v1, v1, p1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    array-length v0, v1

    aput v0, p1, p0

    return-void
.end method


# virtual methods
.method public count()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    return p0
.end method

.method public getBin(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget p0, p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
