.class public final Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.source "NotificationPanelViewController.java"


# instance fields
.field public mLastTouchDownTime:J

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->mLastTouchDownTime:J

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->mLastTouchDownTime:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->$r8$clinit:I

    const-string v0, "PanelView"

    const-string v1, "Duplicate down event detected... ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->mLastTouchDownTime:J

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    const/4 v5, 0x0

    if-nez v4, :cond_57

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v4, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_29

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->isBouncerShowingScrimmed()Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->isBouncerShowingOverDream()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_29

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    :cond_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    const/4 v7, 0x0

    if-nez v6, :cond_7

    iget v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    iget v8, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    invoke-virtual {v2, v6, v8, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-eqz v2, :cond_9

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    move v2, v5

    :goto_0
    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v3

    :cond_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    if-eqz v6, :cond_c

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v8, :cond_c

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_1

    :cond_b
    move v2, v5

    :goto_1
    if-nez v2, :cond_c

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v6, "panel_open_peek"

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v6, :cond_d

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v6, :cond_25

    :cond_d
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v6, :cond_25

    iget v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v6, :cond_25

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v6, :cond_25

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    iget-boolean v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    goto/16 :goto_c

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    if-eqz v6, :cond_18

    if-eq v6, v3, :cond_15

    if-eq v6, v10, :cond_11

    if-eq v6, v4, :cond_10

    if-eq v6, v8, :cond_f

    goto/16 :goto_a

    :cond_f
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    invoke-virtual {v2, v12, v11, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(FFZ)V

    goto/16 :goto_a

    :cond_10
    move v6, v5

    goto :goto_3

    :cond_11
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_12

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_12
    iget v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v12, v6

    iget v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr v11, v6

    float-to-double v12, v12

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v6, v11

    iget-boolean v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v11, :cond_13

    iget v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v6, v11

    if-lez v11, :cond_13

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    :cond_13
    iget-boolean v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_23

    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v12, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v11, v12, :cond_14

    iget v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    sub-float/2addr v11, v6

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_2

    :cond_14
    iget v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v11, v6

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_2
    invoke-virtual {v2, v6, v5, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto/16 :goto_a

    :cond_15
    move v6, v3

    :goto_3
    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v14, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v13, v14, :cond_16

    move v13, v3

    goto :goto_4

    :cond_16
    move v13, v5

    :goto_4
    iget-object v14, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_17

    invoke-virtual {v14, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_17
    xor-int/lit8 v14, v6, 0x1

    invoke-virtual {v2, v12, v11, v14}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(FFZ)V

    iget-boolean v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v11, :cond_23

    if-eqz v6, :cond_23

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->onIconClicked(Z)V

    goto/16 :goto_a

    :cond_18
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_19

    move v6, v3

    goto :goto_5

    :cond_19
    move v6, v5

    :goto_5
    if-eqz v6, :cond_1a

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v6, v12, v11}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FF)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_7

    :cond_1a
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1b

    move v6, v3

    goto :goto_6

    :cond_1b
    move v6, v5

    :goto_6
    if-eqz v6, :cond_1c

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v6, v12, v11}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FF)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_7

    :cond_1c
    move-object v6, v9

    :goto_7
    if-eqz v6, :cond_24

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v13, :cond_1d

    if-eq v13, v6, :cond_1d

    goto :goto_b

    :cond_1d
    if-eqz v13, :cond_1e

    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Landroid/animation/Animator;->cancel()V

    goto :goto_8

    :cond_1e
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    :cond_1f
    :goto_8
    iget-object v13, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v14, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v6, v14, :cond_20

    move v14, v3

    goto :goto_9

    :cond_20
    move v14, v5

    :goto_9
    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->onSwipingStarted(Z)V

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    iput-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iput v12, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    iput v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    iget v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_21

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    :cond_21
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_22

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_22
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    :cond_23
    :goto_a
    move v2, v3

    goto :goto_d

    :cond_24
    :goto_b
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    :goto_c
    move v2, v5

    :goto_d
    or-int/2addr v2, v5

    goto :goto_e

    :cond_25
    move v2, v5

    :goto_e
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v11, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    if-eqz v11, :cond_26

    return v3

    :cond_26
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v2, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v11, :cond_52

    iget-boolean v11, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeEnabled:Z

    if-eqz v11, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->touchXOutsideOfQs(F)Z

    move-result v11

    if-eqz v11, :cond_27

    goto/16 :goto_26

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    iget-boolean v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v12, :cond_28

    iget-boolean v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeEnabled:Z

    if-nez v12, :cond_28

    move v12, v3

    goto :goto_f

    :cond_28
    move v12, v5

    :goto_f
    iget v13, v6, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_29

    iget v13, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v13, v3, :cond_29

    if-eqz v12, :cond_29

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v12

    if-eqz v12, :cond_29

    move v12, v3

    goto :goto_10

    :cond_29
    move v12, v5

    :goto_10
    if-nez v11, :cond_2a

    if-eqz v12, :cond_2a

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    iget v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    :cond_2a
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v12

    if-nez v12, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    if-nez v12, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v6, v12, v13, v15}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v12

    if-eqz v12, :cond_2b

    iget-object v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v12}, Lcom/android/systemui/classifier/FalsingCollector;->onQsDown()V

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    iget v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_2b
    iget-boolean v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v12, :cond_46

    iget-boolean v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v12, :cond_46

    iget v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    if-gez v12, :cond_2c

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v12, v5

    :cond_2c
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    iget v15, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v15, v13, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    if-eqz v14, :cond_43

    if-eq v14, v3, :cond_32

    if-eq v14, v10, :cond_2f

    if-eq v14, v4, :cond_32

    const/4 v7, 0x6

    if-eq v14, v7, :cond_2d

    goto/16 :goto_20

    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v9, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v9, v7, :cond_45

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v7, :cond_2e

    move v7, v5

    goto :goto_11

    :cond_2e
    move v7, v3

    :goto_11
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    iget v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    iput v9, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto/16 :goto_20

    :cond_2f
    iget v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v7, v15

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->isWakeUpComingFromTouch()Z

    move-result v7

    if-eqz v7, :cond_30

    const/high16 v14, 0x3fc00000    # 1.5f

    goto :goto_12

    :cond_30
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_12
    iget v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    int-to-float v7, v7

    mul-float/2addr v7, v14

    float-to-int v7, v7

    int-to-float v7, v7

    cmpl-float v7, v15, v7

    if-ltz v7, :cond_31

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    :cond_31
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_20

    :cond_32
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    const/4 v12, -0x1

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v12

    cmpl-float v12, v12, v7

    if-nez v12, :cond_35

    iget v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    cmpl-float v12, v13, v12

    if-ltz v12, :cond_33

    goto :goto_14

    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v4, :cond_34

    move v7, v3

    goto :goto_13

    :cond_34
    move v7, v5

    :goto_13
    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    goto/16 :goto_1f

    :cond_35
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    if-ne v12, v4, :cond_36

    move v12, v3

    goto :goto_15

    :cond_36
    move v12, v5

    :goto_15
    iget-object v14, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v15, 0x3e8

    if-nez v14, :cond_37

    move v14, v7

    goto :goto_16

    :cond_37
    invoke-virtual {v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v14, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v14

    :goto_16
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v16

    iget-object v10, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v10, v10, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpg-float v10, v16, v10

    if-gez v10, :cond_38

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v10

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v16

    if-lez v10, :cond_39

    goto :goto_17

    :cond_38
    cmpl-float v10, v14, v7

    if-lez v10, :cond_39

    :goto_17
    move v10, v3

    goto :goto_18

    :cond_39
    move v10, v5

    :goto_18
    if-eqz v10, :cond_3f

    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v8}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v8}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v8

    if-eqz v8, :cond_3a

    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v8, v5}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v8

    goto :goto_19

    :cond_3a
    iget-boolean v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    xor-int/2addr v8, v3

    :goto_19
    if-eqz v8, :cond_3b

    goto :goto_1c

    :cond_3b
    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_3c

    goto :goto_1a

    :cond_3c
    invoke-virtual {v8, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    :goto_1a
    iget v8, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v8, v3, :cond_3d

    const/16 v8, 0xc1

    goto :goto_1b

    :cond_3d
    const/16 v8, 0xc2

    :goto_1b
    iget-object v15, v6, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr v13, v4

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getDisplayDensity()F

    move-result v4

    div-float/2addr v13, v4

    float-to-int v4, v13

    iget-object v13, v6, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getDisplayDensity()F

    move-result v13

    div-float/2addr v7, v13

    float-to-int v7, v7

    invoke-virtual {v15, v8, v4, v7}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    goto :goto_1d

    :cond_3e
    :goto_1c
    move v10, v5

    goto :goto_1d

    :cond_3f
    cmpg-float v4, v14, v7

    if-gez v4, :cond_40

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v7, 0xc

    invoke-interface {v4, v7}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    :cond_40
    :goto_1d
    if-eqz v10, :cond_41

    if-nez v12, :cond_41

    move v4, v5

    goto :goto_1e

    :cond_41
    iget-boolean v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeEnabled:Z

    if-eqz v4, :cond_42

    const/4 v4, 0x2

    goto :goto_1e

    :cond_42
    move v4, v3

    :goto_1e
    invoke-virtual {v6, v14, v4, v9, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;Z)V

    :goto_1f
    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v9, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_20

    :cond_43
    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    iput v13, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    iget v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    :cond_44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_45
    :goto_20
    iget-boolean v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v4, :cond_46

    iget-boolean v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeEnabled:Z

    if-nez v4, :cond_46

    move v4, v3

    goto/16 :goto_27

    :cond_46
    const/4 v4, 0x3

    if-eq v11, v4, :cond_47

    if-ne v11, v3, :cond_48

    :cond_47
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    :cond_48
    if-nez v11, :cond_49

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v4

    if-eqz v4, :cond_49

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    :cond_49
    iget-boolean v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    if-eqz v4, :cond_51

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4a

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4a

    move v4, v3

    goto :goto_21

    :cond_4a
    move v4, v5

    :goto_21
    if-nez v7, :cond_4c

    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v8

    if-nez v8, :cond_4b

    const/16 v8, 0x40

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v8

    if-eqz v8, :cond_4c

    :cond_4b
    move v8, v3

    goto :goto_22

    :cond_4c
    move v8, v5

    :goto_22
    if-nez v7, :cond_4e

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-nez v7, :cond_4d

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v7

    if-eqz v7, :cond_4e

    :cond_4d
    move v7, v3

    goto :goto_23

    :cond_4e
    move v7, v5

    :goto_23
    if-nez v4, :cond_50

    if-nez v8, :cond_50

    if-eqz v7, :cond_4f

    goto :goto_24

    :cond_4f
    move v4, v5

    goto :goto_25

    :cond_50
    :goto_24
    move v4, v3

    :goto_25
    if-eqz v4, :cond_51

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v7, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_51

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v7, "panel_open_qs"

    invoke-virtual {v4, v7, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iput-boolean v3, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setShowShelfOnly(Z)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    :cond_51
    :goto_26
    move v4, v5

    :goto_27
    if-eqz v4, :cond_52

    return v3

    :cond_52
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_53

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "panel_open"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    move v2, v3

    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v6, :cond_54

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v4, :cond_54

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v4, :cond_54

    iget-object v4, v4, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-eqz v4, :cond_54

    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v4, v6}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->updatePositionByTouchX(F)V

    :cond_54
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-eqz v2, :cond_56

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-nez v0, :cond_56

    if-eqz v1, :cond_55

    goto :goto_28

    :cond_55
    move v3, v5

    :cond_56
    :goto_28
    return v3

    :cond_57
    :goto_29
    return v5
.end method
