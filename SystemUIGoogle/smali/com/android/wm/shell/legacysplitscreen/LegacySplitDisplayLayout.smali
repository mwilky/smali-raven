.class public final Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
.super Ljava/lang/Object;
.source "LegacySplitDisplayLayout.java"


# instance fields
.field public mAdjustedPrimary:Landroid/graphics/Rect;

.field public mAdjustedSecondary:Landroid/graphics/Rect;

.field public mContext:Landroid/content/Context;

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mDividerSize:I

.field public mDividerSizeInactive:I

.field public mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field public mPrimary:Landroid/graphics/Rect;

.field public mResourcesValid:Z

.field public mSecondary:Landroid/graphics/Rect;

.field public mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field public mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field public final mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I
    .locals 20

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v13}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    const v3, 0x7fffffff

    move v14, v3

    move v15, v12

    :goto_0
    const/4 v9, 0x4

    if-ge v15, v9, :cond_7

    invoke-virtual {v13, v0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v13, v3, v15}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/Configuration;->unset()V

    iget v4, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    move v4, v7

    :goto_1
    iput v4, v3, Landroid/content/res/Configuration;->orientation:I

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v6, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-direct {v4, v12, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v13, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v5, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget v5, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v6, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v4, v12, v12, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, v13, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v13}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v13}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v6, p0

    invoke-virtual {v6, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v9, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_1

    move/from16 v17, v7

    goto :goto_2

    :cond_1
    move/from16 v17, v12

    :goto_2
    iget-object v3, v13, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v3

    move-object v3, v5

    move-object/from16 v19, v5

    move v5, v8

    move v6, v9

    move v9, v7

    move v7, v1

    move/from16 v8, v17

    const/16 v16, 0x4

    move-object/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v2, v11, v3, v15}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget v3, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v10, v12, v12, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v3, v4, :cond_2

    const/4 v8, 0x2

    goto :goto_3

    :cond_2
    const/4 v8, 0x1

    :goto_3
    const/4 v3, 0x1

    if-ne v8, v3, :cond_4

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gez v3, :cond_3

    move/from16 v4, v16

    goto :goto_5

    :cond_3
    const/4 v4, 0x2

    goto :goto_5

    :cond_4
    const/4 v4, 0x2

    if-ne v8, v4, :cond_5

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-gez v4, :cond_6

    const/4 v3, 0x3

    goto :goto_4

    :cond_5
    const/4 v3, -0x1

    :cond_6
    :goto_4
    move v4, v3

    :goto_5
    invoke-static {v2, v4, v1}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v3

    move-object/from16 v5, v19

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v6, v13, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v7, v13, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    move-object v5, v2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v13, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_7
    int-to-float v1, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method


# virtual methods
.method public final getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v3, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget-object v7, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, v0

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method public final getPrimarySplitSide()I
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const v5, 0x111017d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    if-le v2, v3, :cond_2

    if-ne v0, v4, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    return v4

    :cond_6
    const/4 p0, 0x3

    return p0
.end method

.method public final getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v3, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget-object v7, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method public final resizeSplits(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_0
    return-void
.end method

.method public final resizeSplits(I)Z
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v4, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    move v1, p1

    move v2, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v7, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v8, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v9, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v1

    return p0
.end method

.method public final updateAdjustedBounds(III)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSizeInactive:I

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget v6, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v7, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    sub-int v6, p1, p2

    int-to-float v6, v6

    sub-int v7, p3, p2

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v2, v2

    mul-float/2addr v2, v6

    int-to-float v7, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v6, v7, v2}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    float-to-int v2, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v5

    int-to-float v7, v7

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v5, v7

    sub-int/2addr v6, v5

    sub-int/2addr p2, p3

    sub-int/2addr p2, v6

    invoke-static {v8, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p1

    iget p1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    sub-int/2addr p1, p2

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    neg-int p1, p1

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {p2, v8, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final updateResources()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSizeInactive:I

    return-void
.end method
