.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field public mCapacityBitmask:I

.field public mElements:[I

.field public mTail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/2addr v1, v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    return-void
.end method


# virtual methods
.method public final addLast(I)V
    .locals 5

    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr p1, v1

    iput p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-nez p1, :cond_1

    array-length p1, v0

    add-int/lit8 v1, p1, 0x0

    shl-int/lit8 v2, p1, 0x1

    if-ltz v2, :cond_0

    new-array v3, v2, [I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    invoke-static {v0, v4, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    iput p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max array capacity exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
