.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellHeightResId:I

.field protected mCellHeightModResId:I

.field protected mCellMarginHorizontal:I

.field protected mCellMarginVertical:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mLastTileBottom:I

.field private final mLessRows:Z

.field protected mListening:Z

.field protected mMaxAllowedRows:I

.field protected mMaxCellHeight:I

.field private mMaxColumns:I

.field private mMinRows:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mResourceColumns:I

.field protected mRows:I

.field protected mSidePadding:I

.field private mSquishinessFraction:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, "qs_tile_height"

    const-string v1, "dimen"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightResId:I

    .line 52
    const-string v0, "qs_tile_height_mw"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightModResId:I

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "z":Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 56
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 57
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    .line 58
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    .line 59
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qs_less_rows"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_44
    iput-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 66
    return-void
.end method

.method protected static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private layoutTileRecords(IZ)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p1, :cond_4

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    if-eqz v0, :cond_2

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr v9, v8

    iget-object v10, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    if-eqz p2, :cond_3

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_3

    :cond_3
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    :goto_3
    iput v10, p0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateColumns()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sget v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    return-void
.end method

.method protected addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected getCellHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    return p0
.end method

.method protected getColumnStart(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v1, p0

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public getNumVisibleTiles()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected getRowTop(I)I
    .locals 2

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    mul-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method

.method public getTilesHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public maxTiles()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr v0, p0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    div-int/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getCellHeight()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v4}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxColumns(I)Z
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    invoke-direct {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    move-result p0

    return p0
.end method

.method public setMinRows(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSquishinessFraction(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v1, v0, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;->setSquishinessFraction(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateMaxRows(II)Z
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getCellHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v1, v2

    div-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-ge p1, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    if-lt p1, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int v2, p2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    if-le p1, v2, :cond_2

    add-int/2addr p2, v1

    sub-int/2addr p2, v3

    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public updateResources()Z
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    .line 111
    sget v1, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v1, :cond_25

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    goto :goto_33

    .line 114
    :cond_25
    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightModResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    .line 116
    :goto_33
    sget v1, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v3, "dimen"

    if-nez v1, :cond_46

    .line 117
    const-string v1, "qs_tile_margin_horizontal"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    goto :goto_52

    .line 119
    :cond_46
    const-string v1, "qs_tile_margin_horizontal_mw"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 121
    :goto_52
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->useSidePadding()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5e

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_5f

    :cond_5e
    move v1, v4

    :goto_5f
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 122
    sget v1, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v1, :cond_72

    .line 123
    const-string v1, "qs_tile_margin_vertical"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    goto :goto_7e

    .line 125
    :cond_72
    const-string v1, "qs_tile_margin_vertical_mw"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 127
    :goto_7e
    sget v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 128
    .local v1, "max":I
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 129
    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    if-eqz v3, :cond_94

    .line 130
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    add-int/lit8 v5, v1, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 132
    :cond_94
    invoke-direct {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    move-result v3

    if-nez v3, :cond_9b

    .line 133
    return v4

    .line 135
    :cond_9b
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    .line 136
    return v2
.end method

.method protected useSidePadding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
