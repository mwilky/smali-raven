.class public final Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "NotificationsQSContainerController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSContainerController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
        ">;",
        "Lcom/android/systemui/plugins/qs/QSContainerController;"
    }
.end annotation


# instance fields
.field public bottomCutoutInsets:I

.field public bottomStableInsets:I

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final delayedInsetSetter:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public footerActionsOffset:I

.field public isGestureNavigation:Z

.field public isQSCustomizerAnimating:Z

.field public isQSCustomizing:Z

.field public isQSDetailShowing:Z

.field public largeScreenShadeHeaderActive:Z

.field public largeScreenShadeHeaderHeight:I

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public notificationsBottomMargin:I

.field public final overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public panelMarginHorizontal:I

.field public qsExpanded:Z

.field public scrimShadeBottomMargin:I

.field public splitShadeEnabled:Z

.field public final taskbarVisibilityListener:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

.field public taskbarVisible:Z

.field public topMargin:I

.field public final useCombinedQSHeaders:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    sget-object p1, Lcom/android/systemui/flags/Flags;->COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

    invoke-interface {p4, p1}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/BooleanFlag;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->useCombinedQSHeaders:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onInit$currentMode$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onInit$currentMode$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Landroidx/preference/R$string;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->delayedInsetSetter:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$1;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInsetsChangedListener:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSFragmentAttachedListener:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mConfigurationChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setCustomizerAnimating(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizerAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCustomizerShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method

.method public final setDetailShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method

.method public final updateBottomSpacing()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->notificationsBottomMargin:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    :goto_0
    add-int/2addr v0, v3

    move v3, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    move v3, v0

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    if-nez v4, :cond_8

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->scrimShadeBottomMargin:I

    sub-int v1, v0, v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->footerActionsOffset:I

    sub-int/2addr v1, v4

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v4, v2, v2, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    return-void
.end method

.method public final updateResources()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050043

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705de

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->notificationsBottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0702c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705df

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->panelMarginHorizontal:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705e0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070786

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0b0359

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    const/4 v7, 0x7

    invoke-virtual {v0, v5, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    const v5, 0x7f0b0528

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    const v8, 0x7f0b052b

    invoke-virtual {v0, v8, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->panelMarginHorizontal:I

    :goto_4
    invoke-virtual {v0, v8, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->panelMarginHorizontal:I

    :goto_5
    invoke-virtual {v0, v8, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->topMargin:I

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    move v5, v2

    :goto_6
    const v4, 0x7f0b04a9

    invoke-virtual {v0, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_7

    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->panelMarginHorizontal:I

    :goto_7
    invoke-virtual {v0, v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->panelMarginHorizontal:I

    invoke-virtual {v0, v4, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->topMargin:I

    invoke-virtual {v0, v4, v9, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->notificationsBottomMargin:I

    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderActive:Z

    const v5, 0x7f0b0622

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->largeScreenShadeHeaderHeight:I

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    goto :goto_8

    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->useCombinedQSHeaders:Z

    if-eqz v4, :cond_a

    const/4 v4, -0x2

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    :cond_a
    :goto_8
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$updateResources$scrimMarginChanged$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070765

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-interface {v0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    if-eq v5, v4, :cond_b

    move v0, v3

    goto :goto_9

    :cond_b
    move v0, v2

    :goto_9
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-interface {v4}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    if-eq v5, v6, :cond_c

    move v4, v3

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    if-nez v0, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    move v2, v3

    :cond_e
    if-nez v1, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    :cond_10
    return-void
.end method
