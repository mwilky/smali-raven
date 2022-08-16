.class public abstract Landroidx/leanback/widget/StaggeredGrid;
.super Landroidx/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field public mFirstIndex:I

.field public mLocations:Landroidx/collection/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/CircularArray<",
            "Landroidx/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingItem:Ljava/lang/Object;

.field public mPendingItemSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroidx/collection/CircularArray;

    invoke-direct {v0}, Landroidx/collection/CircularArray;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method


# virtual methods
.method public final appendVisbleItemsWithCache(IZ)Z
    .locals 11

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const v3, 0x7fffffff

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v6, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v2

    add-int/2addr v2, v4

    if-gt v5, v2, :cond_c

    iget v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ge v5, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v2

    if-le v5, v2, :cond_4

    return v1

    :cond_4
    move v2, v3

    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    :goto_2
    if-ge v5, v0, :cond_b

    if-gt v5, v6, :cond_b

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    if-eq v2, v3, :cond_5

    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v2, v8

    :cond_5
    iget v8, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    iget-object v9, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v9, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v9, v5, v4, v10, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v9

    iget v10, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v9, v10, :cond_6

    iput v9, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v7, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    sub-int/2addr v6, v5

    invoke-virtual {v7, v6}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    move v6, v5

    :cond_6
    iput v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v7, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-gez v7, :cond_7

    iput v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_7
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v10, v10, v1

    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v7, v10, v9, v8, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v7

    if-eqz v7, :cond_8

    return v4

    :cond_8
    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v2

    :cond_9
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v7, v4

    if-ne v8, v7, :cond_a

    if-eqz p2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    return v1

    :cond_c
    :goto_3
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return v1
.end method

.method public final appendVisibleItemToRow(III)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_7

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :cond_4
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int v3, v3

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v3, v4

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, v4

    :goto_3
    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v4

    if-gt v0, v4, :cond_8

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v3, v1

    goto :goto_5

    :cond_7
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    sub-int v3, p3, v0

    :cond_8
    :goto_5
    new-instance v0, Landroidx/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v0, p2, v3}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(II)V

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    iget-object v4, v3, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, v3, Landroidx/collection/CircularArray;->mTail:I

    aput-object v0, v4, v5

    add-int/2addr v5, v2

    iget v4, v3, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v4, v5

    iput v4, v3, Landroidx/collection/CircularArray;->mTail:I

    iget v5, v3, Landroidx/collection/CircularArray;->mHead:I

    if-ne v4, v5, :cond_9

    invoke-virtual {v3}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_9
    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v3, :cond_a

    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v1, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, p1, v2, v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v3, v3, v1

    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    if-ne v1, v2, :cond_b

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    goto :goto_7

    :cond_b
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v1, :cond_c

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_7

    :cond_c
    add-int/2addr v1, v2

    iput v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget p1, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    iget p0, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return p0
.end method

.method public final appendVisibleItems(IZ)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method public abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v2, v2, v1

    iput v0, v2, Landroidx/collection/CircularIntArray;->mTail:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_4

    :goto_1
    if-gt p1, p2, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    aget-object v0, v0, v1

    iget v1, v0, Landroidx/collection/CircularIntArray;->mTail:I

    add-int/lit8 v2, v1, 0x0

    iget v3, v0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    if-lez v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/collection/CircularIntArray;->mElements:[I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    aget v2, v2, v3

    add-int/lit8 v4, p1, -0x1

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_1

    iput v3, v0, Landroidx/collection/CircularIntArray;->mTail:I

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLastIndex()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result p0

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget p0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    check-cast p0, Landroidx/leanback/widget/StaggeredGrid$Location;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final invalidateItemsAfter(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_0
    return-void
.end method

.method public final prependVisbleItemsWithCache(IZ)Z
    .locals 11

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    iget v3, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v4, v3, :cond_a

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_3

    goto :goto_3

    :cond_3
    if-ge v4, v3, :cond_4

    return v1

    :cond_4
    move v3, v1

    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v5, v5, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v5, v5, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iget v6, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2
    if-lt v4, v5, :cond_9

    invoke-virtual {p0, v4}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    iget-object v8, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v9, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v8, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v8, v4, v1, v9, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v8

    iget v9, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v8, v9, :cond_5

    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    add-int/2addr v4, v2

    iget p2, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v4, p2

    invoke-virtual {p1, v4}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object p1, p1, v1

    iput-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput v8, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v1

    :cond_5
    iput v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v9, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v9, :cond_6

    iput v4, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_6
    iget-object v9, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v10, v10, v1

    sub-int/2addr v0, v3

    check-cast v9, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v9, v10, v8, v7, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    iget v3, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    if-nez v7, :cond_8

    if-eqz p2, :cond_8

    return v2

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    return v1

    :cond_a
    :goto_3
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return v1
.end method

.method public final prependVisibleItemToRow(III)I
    .locals 8

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v2

    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(II)V

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    iget v6, v5, Landroidx/collection/CircularArray;->mHead:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v5, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v6, v7

    iput v6, v5, Landroidx/collection/CircularArray;->mHead:I

    iget-object v7, v5, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v7, v6

    iget v7, v5, Landroidx/collection/CircularArray;->mTail:I

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v1, v4

    :goto_2
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v1, :cond_5

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_5
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-nez p1, :cond_6

    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int/2addr p3, p1

    goto :goto_3

    :cond_6
    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr p3, p1

    :goto_3
    if-eqz v0, :cond_7

    sub-int/2addr v2, p3

    iput v2, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    :cond_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {p0, v5, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return p0
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method public abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
