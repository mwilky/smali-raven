.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v6, v5, :cond_2

    if-ge v2, v6, :cond_3

    :cond_2
    invoke-virtual {v1, v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(IZ)V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v6

    instance-of v7, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_1
    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v5, v7

    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v6, v7, :cond_6

    add-int/2addr v7, v5

    invoke-virtual {v1, v7, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(IZ)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    :goto_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_3

    :cond_8
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    :goto_3
    iput v5, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    move-result v7

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v10, v4

    :goto_4
    if-ge v10, v9, :cond_9

    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    iget v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    neg-int v9, v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iput v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v10, v4

    move v11, v10

    :goto_5
    const/16 v12, 0x8

    if-ge v10, v9, :cond_d

    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_c

    iget-object v14, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v13, v14, :cond_a

    goto :goto_7

    :cond_a
    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v11, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v14, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    instance-of v14, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v14, :cond_c

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v14

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v13, :cond_c

    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_b

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v11, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    iget v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;->isBypassEnabled()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    iget v10, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr v9, v10

    :cond_f
    iput-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move v10, v4

    :goto_8
    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    if-lez v10, :cond_10

    iget-object v14, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_9

    :cond_10
    move-object v14, v3

    :goto_9
    invoke-static {v13, v10, v11, v14}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v14

    invoke-virtual {v2, v13, v14}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result v13

    add-float/2addr v9, v13

    :cond_11
    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v13, :cond_12

    iget v14, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v14, v13

    iget v13, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    sub-float/2addr v14, v13

    cmpl-float v13, v9, v14

    if-ltz v13, :cond_12

    instance-of v13, v11, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v13, :cond_12

    iget-object v13, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v13, :cond_12

    iput-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_12
    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;->isBypassEnabled()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_14
    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v10, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    :cond_15
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :goto_a
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-ge v10, v9, :cond_31

    iget-object v15, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iget-boolean v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v12, :cond_16

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v12

    if-ne v15, v12, :cond_16

    move v12, v14

    goto :goto_b

    :cond_16
    move v12, v4

    :goto_b
    if-eqz v12, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    if-eqz v12, :cond_18

    iget v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v12, v13, v12

    iput v12, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_e

    :cond_18
    iget-boolean v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v12, :cond_1b

    iget v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerInTransit()Z

    move-result v13

    if-eqz v13, :cond_19

    move v13, v14

    goto :goto_c

    :cond_19
    move v13, v4

    :goto_c
    if-eqz v13, :cond_1a

    invoke-static {v12}, Landroidx/appcompat/R$attr;->aboutToShowBouncerProgress(F)F

    move-result v12

    goto :goto_d

    :cond_1a
    invoke-static {v12}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v12

    :goto_d
    iput v12, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    :cond_1b
    :goto_e
    iget-boolean v12, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v12, :cond_1d

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v12

    if-eqz v12, :cond_1d

    iget v12, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v13, v12, v6

    if-ltz v13, :cond_1d

    iget v13, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    add-float/2addr v12, v13

    iget v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c

    move v12, v14

    goto :goto_f

    :cond_1c
    move v12, v4

    :goto_f
    iput-boolean v12, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_1d
    invoke-virtual {v2, v5, v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getExpansionFractionWithoutShelf(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)F

    move-result v12

    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    if-lez v10, :cond_1e

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    :goto_10
    invoke-static {v13, v10, v15, v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result v4

    iget v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    mul-float v13, v12, v4

    add-float/2addr v13, v6

    iput v13, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    add-float/2addr v6, v4

    iput v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    :cond_1f
    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    instance-of v4, v15, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v4, :cond_28

    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    xor-int/2addr v4, v14

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v6, :cond_20

    move v6, v14

    goto :goto_11

    :cond_20
    const/4 v6, 0x0

    :goto_11
    if-eqz v4, :cond_21

    iput-boolean v14, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto/16 :goto_1c

    :cond_21
    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    iget v11, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_22

    move v4, v14

    goto :goto_12

    :cond_22
    const/4 v4, 0x0

    :goto_12
    move-object v11, v3

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    if-nez v6, :cond_27

    if-nez v4, :cond_27

    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    :goto_13
    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_25

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    instance-of v13, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v13, :cond_23

    goto :goto_14

    :cond_23
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v6

    if-nez v6, :cond_24

    move v4, v14

    goto :goto_15

    :cond_24
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_25
    const/4 v4, 0x0

    :goto_15
    if-nez v4, :cond_26

    goto :goto_16

    :cond_26
    const/4 v14, 0x0

    :cond_27
    :goto_16
    iput-boolean v14, v11, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->hideContent:Z

    goto/16 :goto_1c

    :cond_28
    instance-of v4, v15, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v4, :cond_29

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMarginBottom:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    sub-float/2addr v4, v6

    invoke-virtual {v2, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    div-float/2addr v4, v11

    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_1b

    :cond_29
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    if-eq v15, v4, :cond_2f

    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v4, :cond_2a

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lt v10, v4, :cond_2a

    goto :goto_17

    :cond_2a
    const/4 v14, 0x0

    :goto_17
    iput-boolean v14, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    goto :goto_1b

    :cond_2b
    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v4, :cond_2f

    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;->isBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v14, 0x0

    :goto_18
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v4, :cond_2e

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2e

    if-eqz v14, :cond_2d

    goto :goto_19

    :cond_2d
    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    goto :goto_1a

    :cond_2e
    :goto_19
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result v6

    int-to-float v4, v6

    :goto_1a
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    sub-float/2addr v4, v6

    invoke-virtual {v2, v15, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;F)V

    :cond_2f
    :goto_1b
    invoke-virtual {v2, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    :goto_1c
    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    invoke-virtual {v2, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v6

    int-to-float v6, v6

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v6, v11

    mul-float/2addr v6, v12

    add-float/2addr v6, v4

    iput v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v6, v11

    add-float/2addr v6, v4

    iput v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    iget-object v4, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    const/4 v11, 0x4

    iput v11, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    const/4 v11, 0x0

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_30

    const/4 v6, 0x2

    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    :cond_30
    iget v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    add-float/2addr v4, v6

    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v12, 0x8

    goto/16 :goto_a

    :cond_31
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_33

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v10, :cond_32

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v10

    if-nez v10, :cond_34

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v9

    if-eqz v9, :cond_32

    goto :goto_1e

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_33
    const/4 v4, -0x1

    :cond_34
    :goto_1e
    sub-int/2addr v3, v14

    const/4 v9, 0x0

    :goto_1f
    if-ltz v3, :cond_3c

    if-ne v3, v4, :cond_35

    move v10, v14

    goto :goto_20

    :cond_35
    const/4 v10, 0x0

    :goto_20
    iget-object v12, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v15, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    const/4 v6, 0x0

    int-to-float v11, v6

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v6

    if-eqz v6, :cond_37

    iget-boolean v6, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v6, :cond_37

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v14, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v14, v14

    move/from16 v20, v4

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v14, v4

    cmpg-float v4, v6, v14

    if-gez v4, :cond_38

    const/4 v4, 0x0

    cmpl-float v10, v9, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v10, :cond_36

    add-float/2addr v9, v4

    goto :goto_21

    :cond_36
    sub-float/2addr v14, v6

    iget v6, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    div-float/2addr v14, v6

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v6, v9

    move v9, v6

    :goto_21
    int-to-float v4, v15

    mul-float/2addr v4, v9

    add-float/2addr v4, v11

    iput v4, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_23

    :cond_37
    move/from16 v20, v4

    :cond_38
    if-eqz v10, :cond_3b

    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v4, :cond_39

    const/4 v4, 0x0

    goto :goto_22

    :cond_39
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    :goto_22
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result v10

    sub-int/2addr v10, v4

    int-to-float v6, v10

    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v6, v10

    iget v10, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    iget v14, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v10, v14

    cmpl-float v14, v6, v10

    if-lez v14, :cond_3a

    iput v11, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :goto_23
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_24

    :cond_3a
    sub-float/2addr v10, v6

    int-to-float v4, v4

    div-float/2addr v10, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v10, v15

    mul-float/2addr v6, v10

    add-float/2addr v6, v11

    iput v6, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_24

    :cond_3b
    const/high16 v4, 0x3f800000    # 1.0f

    iput v11, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :goto_24
    iget v6, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result v10

    sub-float v10, v4, v10

    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float v4, v4

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    iput v10, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v20

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v14, 0x1

    goto/16 :goto_1f

    :cond_3c
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v6

    if-eqz v6, :cond_3d

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v6, :cond_3d

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    invoke-static {v4, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    :cond_3d
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_25
    if-ge v6, v3, :cond_49

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v11, :cond_3e

    goto :goto_26

    :cond_3e
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v11, :cond_3f

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v11, :cond_3f

    :goto_26
    move/from16 v20, v3

    goto/16 :goto_2a

    :cond_3f
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-nez v9, :cond_40

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v12

    if-eqz v12, :cond_40

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v12, :cond_40

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v9, v10

    :cond_40
    if-ne v9, v10, :cond_41

    const/4 v12, 0x1

    goto :goto_27

    :cond_41
    const/4 v12, 0x0

    :goto_27
    iget v13, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v14, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget-boolean v14, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v14, :cond_42

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v14

    if-eqz v14, :cond_42

    iget-boolean v14, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v14, :cond_42

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v14

    if-nez v14, :cond_42

    iget v14, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v14, v14

    iget v15, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v14, v15

    iget v15, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget v15, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v15, v15

    move/from16 v20, v3

    iget v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float v3, v14, v3

    sub-float/2addr v15, v3

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iput v14, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v12, :cond_43

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v3

    if-eqz v3, :cond_43

    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result v15

    int-to-float v14, v15

    iget v15, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iget v15, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v14, v15

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v3, v14

    iget v15, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v15, v15

    sub-float/2addr v3, v14

    invoke-static {v15, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iput v14, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_28

    :cond_42
    move/from16 v20, v3

    :cond_43
    :goto_28
    iget-boolean v3, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v3, :cond_47

    iget v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    iget v14, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v9, :cond_44

    const/4 v3, 0x0

    goto :goto_29

    :cond_44
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    :goto_29
    if-eqz v3, :cond_46

    if-nez v12, :cond_46

    iget-boolean v14, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v14, :cond_45

    iget v14, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v3, v3

    add-float/2addr v14, v3

    cmpl-float v3, v13, v14

    if-lez v3, :cond_46

    :cond_45
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    :cond_46
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v3, :cond_47

    if-eqz v12, :cond_47

    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    if-lez v3, :cond_47

    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v3, v3

    sub-float/2addr v12, v3

    iput v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    :cond_47
    iget-boolean v3, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v3, :cond_48

    iget v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_48
    :goto_2a
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v20

    goto/16 :goto_25

    :cond_49
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_4d

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    instance-of v9, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v9, :cond_4a

    goto :goto_2c

    :cond_4a
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v9

    if-eqz v9, :cond_4c

    if-nez v4, :cond_4b

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v9

    if-eqz v9, :cond_4b

    goto :goto_2c

    :cond_4b
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_4c
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_4d
    iget-boolean v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    if-eqz v3, :cond_4f

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4f

    :cond_4e
    const/4 v3, 0x1

    goto :goto_2d

    :cond_4f
    const/4 v3, 0x0

    :goto_2d
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2e
    if-ge v10, v9, :cond_52

    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v4, v12, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v6, v11, :cond_50

    const/4 v11, 0x1

    goto :goto_2f

    :cond_50
    const/4 v11, 0x0

    :goto_2f
    if-eqz v3, :cond_51

    if-eqz v11, :cond_51

    iget v11, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    iget v13, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v11

    iput v13, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_30

    :cond_51
    const/high16 v14, 0x40000000    # 2.0f

    :goto_30
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    goto :goto_31

    :cond_53
    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_31
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_32
    if-ge v10, v4, :cond_5e

    iget-object v12, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v14

    if-eqz v14, :cond_54

    iget-boolean v14, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v14, :cond_55

    :cond_54
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_55
    iget v14, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v15, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    move/from16 v16, v3

    instance-of v3, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_56

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_56

    move/from16 v19, v4

    const/4 v3, 0x1

    goto :goto_33

    :cond_56
    move/from16 v19, v4

    const/4 v3, 0x0

    :goto_33
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v4, :cond_59

    if-eqz v3, :cond_57

    if-eqz v11, :cond_58

    :cond_57
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_58
    cmpl-float v4, v15, v9

    if-lez v4, :cond_59

    iget-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-nez v4, :cond_59

    sub-float v4, v15, v9

    float-to-int v4, v4

    iput v4, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    goto :goto_34

    :cond_59
    const/4 v4, 0x0

    iput v4, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    :goto_34
    if-eqz v11, :cond_5a

    move v9, v15

    :cond_5a
    if-eqz v3, :cond_5b

    const/4 v11, 0x0

    :cond_5b
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v4

    if-nez v4, :cond_5d

    if-eqz v3, :cond_5c

    goto :goto_35

    :cond_5c
    move v14, v15

    :goto_35
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v6, v3

    :cond_5d
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move/from16 v4, v19

    goto :goto_32

    :cond_5e
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_60

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-lt v3, v7, :cond_5f

    const/4 v6, 0x1

    goto :goto_37

    :cond_5f
    const/4 v6, 0x0

    :goto_37
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_60
    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v2, :cond_61

    goto/16 :goto_3e

    :cond_61
    iget-object v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    check-cast v4, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v6, :cond_68

    if-eqz v3, :cond_68

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    const/4 v6, 0x0

    int-to-float v7, v6

    iput v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v6, :cond_62

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v6

    if-nez v6, :cond_62

    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    invoke-static {v6}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v6

    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_38

    :cond_62
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v13, v7, v6

    iput v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    :goto_38
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    move-result v6

    if-nez v6, :cond_63

    const/4 v6, 0x1

    goto :goto_39

    :cond_63
    const/4 v6, 0x0

    :goto_39
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v6

    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v3, v4, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v3, v2, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_64

    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    :cond_64
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v3, :cond_66

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v3, :cond_65

    goto :goto_3a

    :cond_65
    const/4 v3, 0x0

    goto :goto_3b

    :cond_66
    :goto_3a
    const/4 v3, 0x1

    :goto_3b
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v6, :cond_67

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v6, :cond_67

    if-lez v3, :cond_67

    iget-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v3, :cond_67

    iput-boolean v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_67
    iget v3, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    add-float/2addr v3, v5

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_3c

    :cond_68
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 v3, 0x40

    iput v3, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    :goto_3c
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v3, :cond_69

    goto :goto_3e

    :cond_69
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6a
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_6a

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_3d

    :cond_6b
    :goto_3e
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v2, :cond_81

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_7f

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_7f

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v7, v9

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    add-int/lit8 v10, v9, 0x1

    iget-boolean v11, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v11, :cond_6c

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v11

    if-nez v11, :cond_6c

    const/4 v11, 0x1

    goto :goto_40

    :cond_6c
    const/4 v11, 0x0

    :goto_40
    iget-boolean v12, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v12, :cond_6d

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v13

    goto :goto_41

    :cond_6d
    move v13, v10

    const/4 v10, 0x0

    :goto_41
    iget-boolean v12, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v12, :cond_6e

    iget-object v12, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v12

    if-nez v12, :cond_6e

    const/4 v12, 0x1

    goto :goto_42

    :cond_6e
    const/4 v12, 0x0

    :goto_42
    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_43
    if-ge v14, v6, :cond_78

    move/from16 v16, v2

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v15, :cond_71

    if-eqz v11, :cond_6f

    int-to-float v7, v7

    move-object/from16 v18, v8

    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v8, v8

    move/from16 v19, v15

    iget v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v15, v15

    invoke-static {v8, v15, v10}, Lokio/Okio;->interpolate(FFF)F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    goto :goto_45

    :cond_6f
    move-object/from16 v18, v8

    move/from16 v19, v15

    iget-boolean v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v8, :cond_70

    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_44

    :cond_70
    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_44
    add-int/2addr v7, v8

    :goto_45
    move/from16 v15, v19

    goto :goto_48

    :cond_71
    move-object/from16 v18, v8

    if-eqz v11, :cond_72

    int-to-float v7, v7

    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    iget v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v15

    int-to-float v8, v8

    const/4 v15, 0x0

    invoke-static {v15, v8, v10}, Lokio/Okio;->interpolate(FFF)F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    goto :goto_47

    :cond_72
    iget-boolean v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v8, :cond_73

    iget v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    iget v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v15

    goto :goto_46

    :cond_73
    const/4 v8, 0x0

    :goto_46
    add-int/2addr v7, v8

    :goto_47
    const/4 v15, 0x0

    :goto_48
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    iput v2, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    move/from16 v19, v11

    add-int/lit8 v11, v7, 0x0

    int-to-float v11, v11

    iput v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    move/from16 v20, v15

    const/4 v15, 0x0

    iput-boolean v15, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v12, :cond_74

    iget-boolean v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    if-eqz v15, :cond_74

    iget v15, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_49

    :cond_74
    const/4 v15, 0x0

    :goto_49
    iput v15, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v15, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v15, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v15, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v15, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    const/4 v15, 0x0

    iput v15, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    const/4 v15, 0x0

    iput v15, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    if-ge v14, v13, :cond_76

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v11

    if-eqz v11, :cond_75

    move v11, v10

    goto :goto_4a

    :cond_75
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_4a
    iput v11, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_4b

    :cond_76
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v17, v10, v15

    if-nez v17, :cond_77

    if-gt v14, v9, :cond_77

    iget v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    int-to-float v15, v15

    sub-float/2addr v15, v11

    int-to-float v11, v2

    div-float/2addr v15, v11

    iput v15, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/4 v11, 0x0

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iput v15, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    :cond_77
    :goto_4b
    iget v11, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v11, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iget-boolean v11, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v11, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    add-int/2addr v7, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move-object/from16 v8, v18

    move/from16 v11, v19

    move/from16 v15, v20

    goto/16 :goto_43

    :cond_78
    move/from16 v16, v2

    move-object/from16 v18, v8

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_7c

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v6, :cond_7b

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v6, :cond_7c

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_79

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    :cond_79
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v9, :cond_7a

    goto :goto_4c

    :cond_7a
    move-object v6, v7

    :goto_4c
    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sget-object v10, Lokio/Okio;->sLocationBase:[I

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v2, Lokio/Okio;->sLocationOffset:[I

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x1

    aget v2, v2, v6

    aget v10, v10, v6

    sub-int/2addr v2, v10

    int-to-float v2, v2

    add-float/2addr v8, v2

    iput v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_4d

    :cond_7b
    const/16 v9, 0x8

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v7, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v11, 0x0

    iput v11, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_4e

    :cond_7c
    const/16 v9, 0x8

    :goto_4d
    const/4 v11, 0x0

    :goto_4e
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_80

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-nez v2, :cond_7d

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    :cond_7d
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v12, :cond_7e

    iget v5, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_4f

    :cond_7e
    move v5, v11

    :goto_4f
    iput v5, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    iget v5, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    int-to-float v5, v5

    iput v5, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_50

    :cond_7f
    move/from16 v16, v2

    move-object/from16 v18, v8

    const/16 v9, 0x8

    const/4 v11, 0x0

    :cond_80
    :goto_50
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    move-object/from16 v8, v18

    goto/16 :goto_3f

    :cond_81
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_82

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v2, :cond_82

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_51

    :cond_82
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState$1()V

    :goto_51
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
