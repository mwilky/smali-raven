.class public final Landroidx/leanback/widget/SingleRow;
.super Landroidx/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field public final mTmpLocation:Landroidx/leanback/widget/Grid$Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroidx/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method public final appendVisibleItems(IZ)Z
    .locals 7

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

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
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    move v3, v1

    :goto_1
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v0, v2, v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v4, :cond_6

    iget v4, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v0, -0x1

    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v4

    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v6, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v4, v5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v0, -0x1

    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v4

    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v6, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v5

    add-int/2addr v5, v4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v4, v5

    :goto_2
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_5

    :cond_6
    :goto_3
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_7

    const v4, 0x7fffffff

    goto :goto_4

    :cond_7
    const/high16 v4, -0x80000000

    :goto_4
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v5, v6, v3, v1, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_1

    :cond_9
    move v2, v3

    :cond_a
    :goto_6
    return v2
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_3

    goto :goto_0

    :cond_0
    if-gez p2, :cond_3

    :goto_0
    iget p2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    neg-int p0, p0

    :goto_1
    add-int/2addr v0, p0

    goto :goto_3

    :cond_3
    iget p2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_4

    return-void

    :cond_4
    iget p2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz p2, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget p2, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    if-eq p2, v1, :cond_6

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v1

    iget-boolean p0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p0, :cond_7

    neg-int v0, v0

    :cond_7
    add-int/2addr v0, v1

    :goto_3
    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    check-cast p3, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p3, p2, p0}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->addPosition(II)V

    return-void
.end method

.method public final findRowMax(I[IZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    aput p3, p2, p3

    const/4 p3, 0x1

    aput p1, p2, p3

    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p2, p1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p2

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p1}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    add-int/2addr p0, p2

    :goto_0
    return p0
.end method

.method public final findRowMin(I[IZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    aput p3, p2, p3

    const/4 p3, 0x1

    aput p1, p2, p3

    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p2, p1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p2

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p1}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    sub-int/2addr p2, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v1, v0, Landroidx/collection/CircularIntArray;->mTail:I

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    return-object p0
.end method

.method public final getStartIndexForPrepend()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 8

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

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
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    :goto_0
    if-lt v2, v0, :cond_7

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    check-cast v4, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4, v2, v1, v5, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v5, :cond_4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v6, v2, 0x1

    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v5

    iget v6, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v6, v2, 0x1

    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v5

    iget v6, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    :goto_1
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_4

    :cond_4
    :goto_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v5, :cond_5

    const/high16 v5, -0x80000000

    goto :goto_3

    :cond_5
    const v5, 0x7fffffff

    :goto_3
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_4
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v7, v7, v1

    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v6, v7, v4, v1, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_0

    :cond_7
    move v3, v4

    :cond_8
    :goto_5
    return v3
.end method
