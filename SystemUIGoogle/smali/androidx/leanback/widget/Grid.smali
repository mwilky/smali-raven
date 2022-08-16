.class public abstract Landroidx/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/Grid$Location;,
        Landroidx/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field public mFirstVisibleIndex:I

.field public mLastVisibleIndex:I

.field public mNumRows:I

.field public mProvider:Landroidx/leanback/widget/Grid$Provider;

.field public mReversedFlow:Z

.field public mSpacing:I

.field public mStartIndex:I

.field public mTmpItem:[Ljava/lang/Object;

.field public mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method


# virtual methods
.method public abstract appendVisibleItems(IZ)Z
.end method

.method public final checkAppendOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_2

    :goto_0
    move v1, v3

    :cond_2
    return v1
.end method

.method public final checkPrependOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_2

    :goto_0
    move v1, v3

    :cond_2
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public abstract findRowMax(I[IZ)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, v0, p2, p1}, Landroidx/leanback/widget/Grid;->findRowMax(I[IZ)I

    move-result p0

    return p0
.end method

.method public abstract findRowMin(I[IZ)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, v0, p2, p1}, Landroidx/leanback/widget/Grid;->findRowMin(I[IZ)I

    move-result p0

    return p0
.end method

.method public abstract getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
.end method

.method public abstract getLocation(I)Landroidx/leanback/widget/Grid$Location;
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    if-lt v0, p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_3
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-gez v0, :cond_4

    iput p1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    :cond_4
    return-void
.end method

.method public abstract prependVisibleItems(IZ)Z
.end method

.method public final setNumRows(I)V
    .locals 2

    if-lez p1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    new-array p1, p1, [Landroidx/collection/CircularIntArray;

    iput-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    new-instance v1, Landroidx/collection/CircularIntArray;

    invoke-direct {v1}, Landroidx/collection/CircularIntArray;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
