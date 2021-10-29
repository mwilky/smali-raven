.class public Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanMatrix.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field private static final PACKING:I = 0x20

.field static final STEP:I = 0x40

.field static final STRING_INUSE_INDEX:I = 0x2

.field static final STRING_KEY_INDEX:I = 0x0

.field static final STRING_MAP_INDEX:I = 0x1


# instance fields
.field private mInUse:[Z

.field private mKeys:[I

.field private mMap:[I

.field private mOrder:I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    :cond_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    div-int/lit8 v1, p1, 0x40

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    :cond_1
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v0, :cond_2

    rem-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, v0

    div-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " initCap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    return-void
.end method

.method private static binarySearch([III)I
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-gt v0, v1, :cond_2

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_0
    if-le v3, p2, :cond_1

    add-int/lit8 v1, v2, -0x1

    :goto_1
    goto :goto_0

    :cond_1
    return v2

    :cond_2
    not-int v2, v0

    return v2
.end method

.method private growMatrix()V
    .locals 1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    return-void
.end method

.method private indexOfKey(IZ)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_1

    if-eqz p2, :cond_1

    not-int v0, v0

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->growMatrix()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v2, v3, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 v2, v2, 0x20

    div-int/lit8 v4, v1, 0x20

    rem-int/lit8 v5, v1, 0x20

    shl-int/2addr v3, v5

    not-int v3, v3

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v6, v1, v2

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, v2

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v7, v5, v2

    add-int/2addr v7, v4

    aget v8, v6, v7

    and-int/2addr v8, v3

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private lastInuse()I
    .locals 3

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private nextFree()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private pack()V
    .locals 12

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->lastInuse()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v2, v1

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v3

    aput v0, v2, v1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int v5, v3, v4

    div-int/lit8 v5, v5, 0x20

    mul-int v6, v0, v4

    div-int/lit8 v6, v6, 0x20

    div-int/lit8 v4, v4, 0x20

    invoke-static {v2, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v2, v3, 0x20

    rem-int/lit8 v4, v3, 0x20

    const/4 v5, 0x1

    shl-int v4, v5, v4

    div-int/lit8 v6, v0, 0x20

    rem-int/lit8 v7, v0, 0x20

    shl-int/2addr v5, v7

    const/4 v7, 0x0

    :goto_1
    iget v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v7, v8, :cond_2

    iget-object v9, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v10, v9, v2

    and-int/2addr v10, v4

    if-nez v10, :cond_1

    aget v10, v9, v6

    not-int v11, v5

    and-int/2addr v10, v11

    aput v10, v9, v6

    goto :goto_2

    :cond_1
    aget v10, v9, v6

    or-int/2addr v10, v5

    aput v10, v9, v6

    :goto_2
    div-int/lit8 v9, v8, 0x20

    add-int/2addr v2, v9

    div-int/lit8 v8, v8, 0x20

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree()I

    move-result v0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method private resizeMatrix(I)V
    .locals 10

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v3, p1, p1

    div-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x20

    mul-int v7, p1, v5

    div-int/lit8 v7, v7, 0x20

    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    div-int/lit8 v9, v0, 0x20

    invoke-static {v8, v6, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iput-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matrix order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setValueAtInternal(IIZ)V
    .locals 6

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    div-int/lit8 v1, v0, 0x20

    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    or-int/2addr v4, v2

    aput v4, v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    not-int v5, v2

    and-int/2addr v4, v5

    aput v4, v3, v1

    :goto_0
    return-void
.end method

.method private validateIndex(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private validateIndex(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    return-void
.end method

.method private valueAtInternal(II)Z
    .locals 5

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    div-int/lit8 v1, v0, 0x20

    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v4, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public compact()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->pack()V

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_0

    mul-int/lit8 v2, v1, 0x40

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deleteKey(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v6, v6, v5

    invoke-direct {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v7

    invoke-direct {v1, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v8

    if-eq v7, v8, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public get(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->get(IIZ)Z

    move-result v0

    return v0
.end method

.method public get(IIZ)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    invoke-direct {p0, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v2

    return v2

    :cond_0
    return p3
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v3

    invoke-direct {p0, v2, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public indexOfKey(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public keys()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public matrixToString(Z)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringMeta()[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringRaw()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringCooked()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method matrixToStringCooked()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-direct {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_2

    :cond_0
    const-string v5, "0"

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method matrixToStringMeta()[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string v4, " "

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v7, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4

    const-string v6, "1"

    goto :goto_3

    :cond_4
    const-string v6, "0"

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    return-object v0
.end method

.method matrixToStringRaw()[Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v1, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v4, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_2

    :cond_0
    const-string v4, "0"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public put(IIZ)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    if-ltz v0, :cond_0

    if-gez v1, :cond_3

    :cond_0
    const/4 v2, 0x1

    if-gez v0, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    :cond_1
    if-gez v1, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    :cond_3
    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAt(IIZ)V

    return-void

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "matrix overflow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeAt(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v1, v4

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public setValueAt(IIZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    aget v0, v0, p2

    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAtInternal(IIZ)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .locals 1

    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(II)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    aget v0, v0, p2

    invoke-direct {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v2

    return v2
.end method
