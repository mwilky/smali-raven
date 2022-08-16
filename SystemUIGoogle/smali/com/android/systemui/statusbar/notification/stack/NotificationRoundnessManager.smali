.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"


# instance fields
.field public mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field public mAppearFraction:F

.field public mExpanded:Z

.field public final mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mIsClearAllInProgress:Z

.field public final mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mRoundForPulsingViews:Z

.field public mRoundingChangedCallback:Ljava/lang/Runnable;

.field public mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNotificationBuckets()[I

    move-result-object p1

    array-length p1, p1

    new-array v0, p1, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-array v0, p1, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-array v0, p1, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-array p1, p1, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method


# virtual methods
.method public final getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mIsClearAllInProgress:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    return v1

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, p2, :cond_8

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundForPulsingViews:Z

    if-eqz p0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0705b8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const p2, 0x7f0705b7

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p1, p0

    return p1

    :cond_a
    :goto_1
    return v1
.end method

.method public final handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    if-eqz p3, :cond_0

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    array-length v6, p2

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, p2, v7

    if-ne v8, v4, :cond_1

    move v6, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_3
    if-nez v6, :cond_4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_4

    :cond_3
    move v3, v1

    :goto_4
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public final handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v4, p2, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p1, v7

    if-eqz p3, :cond_0

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_2

    :cond_0
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_2
    if-ne v8, v4, :cond_3

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mFirstInSection:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v7

    if-ne v6, v7, :cond_2

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mLastInSection:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    move v7, v1

    move v6, v5

    goto :goto_5

    :cond_2
    :goto_3
    move v6, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_4
    move v7, v6

    :goto_5
    if-eqz v6, :cond_5

    if-eqz v7, :cond_7

    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    :cond_6
    move v3, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v3
.end method

.method public final isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setViewsAffectedBySwipe(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v1

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v3

    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    invoke-virtual {p2, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result p0

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    :cond_5
    return-void
.end method

.method public final updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v3

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    move-result v2

    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    move-result p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mFirstInSection:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mLastInSection:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_3

    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method
