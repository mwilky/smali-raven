.class public Lcom/android/systemui/globalactions/GlobalActionsGridLayout;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "GlobalActionsGridLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final addToListView(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseSublists:Z

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mSwapRowsAndColumns:Z

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getParentView(IZZ)Landroid/view/ViewGroup;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseItems:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    :cond_1
    return-void
.end method

.method public getAnimationDistance()F
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070257

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public final bridge synthetic getListView()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getListView()Lcom/android/systemui/globalactions/ListGridLayout;
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/ListGridLayout;

    return-object p0
.end method

.method public final onUpdateList()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->setupListView()V

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->onUpdateList()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->updateSeparatedItemSize()V

    return-void
.end method

.method public final removeAllItems()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    :cond_3
    return-void
.end method

.method public final removeAllListViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    :cond_2
    return-void
.end method

.method public setupListView()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->countItems(Z)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldReverseSublists()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseSublists:Z

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldReverseListItems()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseItems:Z

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldSwapRowsAndColumns()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/globalactions/ListGridLayout;->mSwapRowsAndColumns:Z

    return-void
.end method

.method public final shouldReverseListItems()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public shouldReverseSublists()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSwapRowsAndColumns()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateSeparatedItemSize()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, -0x1

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method
