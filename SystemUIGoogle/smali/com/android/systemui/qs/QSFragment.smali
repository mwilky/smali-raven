.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mFullShadeProgress:F

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mInSplitShade:Z

.field private mLastHeaderTranslation:F

.field private mLastKeyguardAndExpanded:Z

.field private mLastPanelFraction:F

.field private mLastQSExpansion:F

.field private mLastViewHeight:I

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

.field private mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field protected mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field private mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

.field private final mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private final mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private final mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

.field private final mQsMediaHost:Lcom/android/systemui/media/MediaHost;

.field public mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

.field private mShowCollapsedOnKeyguard:Z

.field private mSquishinessFraction:F

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTmpLocation:[I

.field private mTransitioningToFullShade:Z


# direct methods
.method public static synthetic $r8$lambda$3zvw7bVBDhwh3GV3GSYsq-B3ULI(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$1(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$SU_vwOjIqGCZqnW_U4x6TV7pczk(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTvt7moPVBPdCeAzjAAkQwspBis(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUchIneYDy4TM4RTrUBsxshgISw(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$3()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p5, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iput-object p6, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    iput-object p7, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    iput-object p9, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    iput-object p10, p0, Lcom/android/systemui/qs/QSFragment;->mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p4, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p11, p0, Lcom/android/systemui/qs/QSFragment;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p8, p0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p12, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private getTotalBottomMargin(Landroid/view/View;)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    instance-of v1, p1, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    return p0
.end method

.method private headerWillBeAnimating()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isKeyguardState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSAnimator;->requestAnimatorUpdate()V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpandedScrollAmount(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/qs/QS$ScrollListener;->onQsPanelScrollChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p7, p9

    sub-int/2addr p3, p5

    if-eq p7, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    iget p3, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    iget p4, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->requestAnimatorUpdate()V

    return-void
.end method

.method private pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->getTotalBottomMargin(Landroid/view/View;)F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p0

    if-eqz p3, :cond_0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private setAlphaAnimationProgress(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setEditLocation(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setEditLocation(II)V

    return-void
.end method

.method private setKeyguardShowing(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method private updateMediaPositions()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    :cond_0
    return-void
.end method

.method private updateQsBounds()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateQsState()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const/4 v6, 0x4

    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v7, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v2

    :goto_5
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-eqz v4, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v7, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v7, :cond_8

    :cond_7
    move v7, v1

    goto :goto_6

    :cond_8
    move v7, v2

    :goto_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v7, :cond_a

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v7, :cond_a

    :cond_9
    move v7, v2

    goto :goto_7

    :cond_a
    move v7, v6

    :goto_7
    invoke-interface {v5, v7}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v4, :cond_d

    :cond_b
    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    move v1, v2

    :cond_d
    :goto_8
    invoke-interface {v5, v1}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez p0, :cond_e

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    move v2, v6

    :goto_9
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    return-void
.end method

.method private updateShowCollapsedOnKeyguard()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eq v0, v1, :cond_3

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSAnimator;->setShowCollapsedOnKeyguard(Z)V

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    :cond_3
    return-void
.end method


# virtual methods
.method public animateHeaderSlidingOut()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeCustomizer()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsFragmentDisableFlagsLogger:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    new-instance v1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    invoke-direct {v1, p2, p3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;-><init>(II)V

    new-instance p3, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    invoke-direct {p3, p2, p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;-><init>(II)V

    invoke-virtual {v0, v1, p3}, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->logDisableFlagChange(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)V

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public hideImmediately()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method public isFullyCollapsed()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public notifyCustomizeChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-interface {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings:I

    invoke-direct {p3, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->saveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setKeyguardShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    sget v1, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetail;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    sget v2, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanelController;->setHeaderContainer(Landroid/view/ViewGroup;)V

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSAnimator()Lcom/android/systemui/qs/QSAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSSquishinessController()Lcom/android/systemui/qs/QSSquishinessController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    if-eqz p2, :cond_0

    const-string v0, "expanded"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSCustomizerController;->restoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setUsingHorizontalLayoutChangeListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBrightnessMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelController;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setFancyClipping(IIIZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSContainerImpl;->setFancyClipping(IIIZ)V

    :cond_0
    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setInSplitShade(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setTranslateWhileExpanding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FFFF)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_2

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mFullShadeProgress:F

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v0, v5

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setAlphaAnimationProgress(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInSplitShade:Z

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    const v0, 0x3dcccccd    # 0.1f

    :goto_4
    sub-float v4, p1, v5

    mul-float/2addr v0, v4

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v6

    :goto_5
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v7, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->headerWillBeAnimating()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v8, p1, v8

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    if-ne v8, v4, :cond_8

    iget v8, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    if-ne v8, v7, :cond_8

    iget v8, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_8

    iget v8, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    cmpl-float v8, v8, p4

    if-nez v8, :cond_8

    return-void

    :cond_8
    iput v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    iput p4, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iput-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    iput v7, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    cmpl-float p2, p1, v5

    if-nez p2, :cond_9

    move p2, v3

    goto :goto_7

    :cond_9
    move p2, v6

    :goto_7
    cmpl-float p4, p1, v1

    if-nez p4, :cond_a

    goto :goto_8

    :cond_a
    move v3, v6

    :goto_8
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p4}, Landroid/widget/ScrollView;->getBottom()I

    move-result p4

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr p4, v1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr p4, v1

    int-to-float p4, p4

    mul-float/2addr v0, p4

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p4, v4, p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    cmpg-float p4, p1, v5

    if-gez p4, :cond_b

    float-to-double v1, p1

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    cmpl-double p4, v1, v7

    if-lez p4, :cond_b

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p4, v6}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    :cond_b
    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v4, :cond_c

    goto :goto_9

    :cond_c
    move v5, p1

    :goto_9
    invoke-interface {p4, v5}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p4, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setRevealExpansion(F)V

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p4

    invoke-interface {p4, p1, p3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(FF)V

    iget-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p4

    invoke-interface {p4, p1, p3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(FF)V

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->setTranslationY(F)V

    if-eqz v3, :cond_d

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3, v6}, Landroid/widget/ScrollView;->setScrollY(I)V

    :cond_d
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p3, p2}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result p3

    neg-float p3, p3

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getHeight()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    if-eqz p2, :cond_f

    iget p3, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/QSSquishinessController;->setSquishiness(F)V

    :cond_f
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateMediaPositions()V

    return-void
.end method

.method public setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    return-void
.end method

.method public setTransitionToFullShadeAmount(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    :cond_1
    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mFullShadeProgress:F

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    :goto_1
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    return-void
.end method
