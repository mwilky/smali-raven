.class public final synthetic Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda0;->f$1:F

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    cmpl-float v1, p0, v3

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v0}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInSplitShade:Z

    if-nez v4, :cond_1

    sub-float v4, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansionInternal(FZ)V

    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    goto :goto_0

    :cond_2
    iput p0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    :goto_0
    iget v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz v4, :cond_3

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    iput p0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionDragDownAmountPx:F

    cmpl-float p0, v1, v3

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    iget p0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    div-float v3, p0, v1

    :goto_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    iget p0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v3, :cond_5

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_7

    :cond_5
    iget v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_7
    :goto_2
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v2, :cond_a

    :cond_8
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p0, v2

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, p0, v2

    sub-float/2addr v3, v2

    div-float v2, v4, v3

    :goto_3
    iget v3, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v4, v3

    iget v6, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr v6, v3

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    :cond_a
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    iget p0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne p0, v5, :cond_b

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->updatePanelExpansionAndVisibility()V

    return-void
.end method
