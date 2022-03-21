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
.field private bottomCutoutInsets:I

.field private bottomStableInsets:I

.field private isGestureNavigation:Z

.field private isQSCustomizerAnimating:Z

.field private isQSCustomizing:Z

.field private isQSDetailShowing:Z

.field private final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private notificationsBottomMargin:I

.field private final overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private qsExpanded:Z

.field private splitShadeEnabled:Z

.field private final taskbarVisibilityListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private taskbarVisible:Z

.field private final windowInsetsListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationModeController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overviewProxyService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->windowInsetsListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$setBottomCutoutInsets$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    return-void
.end method

.method public static final synthetic access$setBottomStableInsets$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    return-void
.end method

.method public static final synthetic access$setGestureNavigation$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    return-void
.end method

.method public static final synthetic access$setTaskbarVisible$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    return-void
.end method

.method public static final synthetic access$updateBottomSpacing(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method

.method private final calculateBottomSpacing()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->notificationsBottomMargin:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :cond_6
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final updateBottomSpacing()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->calculateBottomSpacing()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisible:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v4, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setNotificationsMarginBottom(I)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQSScrollPaddingBottom(I)V

    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onInit$currentMode$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onInit$currentMode$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isGestureNavigation:Z

    return-void
.end method

.method public onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getDefaultNotificationsMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->notificationsBottomMargin:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->windowInsetsListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setInsetsChangedListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQSFragmentAttachedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->overviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->taskbarVisibilityListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->removeOnInsetsChangedListener()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->removeQSFragmentAttachedListener()V

    return-void
.end method

.method public setCustomizerAnimating(Z)V
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

.method public setCustomizerShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSCustomizing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method

.method public setDetailShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->isQSDetailShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->qsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->qsExpanded:Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setSplitShadeEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->splitShadeEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    :cond_0
    return-void
.end method
