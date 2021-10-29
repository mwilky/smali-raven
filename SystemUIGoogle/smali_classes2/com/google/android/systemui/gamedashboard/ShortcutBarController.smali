.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
.super Ljava/lang/Object;
.source "ShortcutBarController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private final mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

.field private mIsAttached:Z

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

.field private final mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/google/android/systemui/gamedashboard/FpsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Lcom/google/android/systemui/gamedashboard/ToastController;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Lcom/google/android/systemui/gamedashboard/FpsController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Landroid/os/Handler;",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    move-object v1, p3

    iput-object v1, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    move-object/from16 v1, p9

    iput-object v1, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    move-object/from16 v6, p8

    iput-object v6, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p5

    move-object v4, p7

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->create(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Landroid/os/Handler;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    return-void
.end method

.method private hideUI()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->remove()V

    return-void
.end method

.method private onButtonVisibilityChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->show()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hideUI()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public autoUndock()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->autoUndock()V

    :cond_0
    return-void
.end method

.method public getGameTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGameTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hideUI()V

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->unregisterFps()V

    return-void
.end method

.method public isFpsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isFpsVisible()Z

    move-result p0

    return p0
.end method

.method public isRecordVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isRecordVisible()Z

    move-result p0

    return p0
.end method

.method public isScreenshotVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->isScreenshotVisible()Z

    move-result p0

    return p0
.end method

.method public registerFps(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FpsController;->unregister()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/gamedashboard/FpsController;->register(ILcom/google/android/systemui/gamedashboard/FpsController$Callback;)V

    return-void
.end method

.method public setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method

.method public setEntryPointOnTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setEntryPointOnTouchListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEntryPointVisibility(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setEntryPointVisibility(Z)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->onButtonVisibilityChange(Z)V

    return-void
.end method

.method public setExcludeBackRegionCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setExcludeBackRegionCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setFpsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_fps_counter_on:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setFpsVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->onButtonVisibilityChange(Z)V

    return-void
.end method

.method public setNavBarButtonState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setNavBarButtonState(Z)V

    return-void
.end method

.method public setRecordVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_record_shortcut_available:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setRecordVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->onButtonVisibilityChange(Z)V

    return-void
.end method

.method public setScreenshotVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_screenshot_shortcut_available:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenshotVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->onButtonVisibilityChange(Z)V

    return-void
.end method

.method public show()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v5, 0x108

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7f6

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "Shortcut Bar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->slideIn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mIsAttached:Z

    return-void
.end method

.method public showDndText(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    sget p1, Lcom/android/systemui/R$string;->game_dashboard_dnd_on:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ToastController;->showShortcutText(I)V

    :cond_0
    return-void
.end method

.method public unregisterFps()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mFpsController:Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FpsController;->unregister()V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->show()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->mView:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hideUI()V

    :cond_1
    :goto_0
    return-void
.end method
